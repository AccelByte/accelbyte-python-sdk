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

from ..models import ApimodelCreateNoSQLAppDatabaseRequest
from ..models import ApimodelCreateNoSQLDatabaseCredentialRequest
from ..models import ApimodelDeleteNoSQLResourceResponse
from ..models import ApimodelNoSQLDatabaseCredentialResponse
from ..models import ApimodelNoSQLDatabaseDeleteResponse
from ..models import ApimodelNoSQLDatabaseResponse
from ..models import ApimodelNoSQLResourceResponse
from ..models import ApimodelTunnelInfoResponse
from ..models import NosqlresourceNoSQLResourceConfiguration
from ..models import ResponseErrorResponse

from ..operations.managed_resources import CreateNoSQLClusterV2
from ..operations.managed_resources import CreateNoSQLDatabaseCredentialV2
from ..operations.managed_resources import CreateNoSQLDatabaseV2
from ..operations.managed_resources import DeleteNoSQLClusterV2
from ..operations.managed_resources import DeleteNoSQLDatabaseV2
from ..operations.managed_resources import GetNoSQLAccessTunnelV2
from ..operations.managed_resources import GetNoSQLClusterV2
from ..operations.managed_resources import GetNoSQLDatabaseV2
from ..operations.managed_resources import StartNoSQLClusterV2
from ..operations.managed_resources import StopNoSQLClusterV2
from ..operations.managed_resources import UpdateNoSQLClusterV2


@same_doc_as(CreateNoSQLClusterV2)
def create_no_sql_cluster_v2(
    body: NosqlresourceNoSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates NoSQL Cluster (CreateNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [CREATE]`

    Provision NoSQL database cluster and instances that can be used by extend apps in game namespace within the studio.
    Only one NoSQL resource can be created for one studio/publisher namespace.

    Provisioning process is done asynchronously, you can check from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: POST

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NosqlresourceNoSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLResourceResponse (OK)

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
    request = CreateNoSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNoSQLClusterV2)
async def create_no_sql_cluster_v2_async(
    body: NosqlresourceNoSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates NoSQL Cluster (CreateNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [CREATE]`

    Provision NoSQL database cluster and instances that can be used by extend apps in game namespace within the studio.
    Only one NoSQL resource can be created for one studio/publisher namespace.

    Provisioning process is done asynchronously, you can check from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: POST

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NosqlresourceNoSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLResourceResponse (OK)

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
    request = CreateNoSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateNoSQLDatabaseCredentialV2)
def create_no_sql_database_credential_v2(
    app: str,
    body: ApimodelCreateNoSQLDatabaseCredentialRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates a new database credential for the customer (CreateNoSQLDatabaseCredentialV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASECREDENTIALS [CREATE]`

    Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials

        method: POST

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateNoSQLDatabaseCredentialRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseCredentialResponse (OK)

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
    request = CreateNoSQLDatabaseCredentialV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNoSQLDatabaseCredentialV2)
async def create_no_sql_database_credential_v2_async(
    app: str,
    body: ApimodelCreateNoSQLDatabaseCredentialRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates a new database credential for the customer (CreateNoSQLDatabaseCredentialV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASECREDENTIALS [CREATE]`

    Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials

        method: POST

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateNoSQLDatabaseCredentialRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseCredentialResponse (OK)

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
    request = CreateNoSQLDatabaseCredentialV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateNoSQLDatabaseV2)
def create_no_sql_database_v2(
    app: str,
    body: ApimodelCreateNoSQLAppDatabaseRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates NoSQL Database for Extend App (CreateNoSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [CREATE]`

    Creates a NoSQL database along with its credentials associated with given extend app. The database will be created in the provisioned NoSQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases

        method: POST

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateNoSQLAppDatabaseRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseResponse (OK)

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
    request = CreateNoSQLDatabaseV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateNoSQLDatabaseV2)
async def create_no_sql_database_v2_async(
    app: str,
    body: ApimodelCreateNoSQLAppDatabaseRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates NoSQL Database for Extend App (CreateNoSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [CREATE]`

    Creates a NoSQL database along with its credentials associated with given extend app. The database will be created in the provisioned NoSQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases

        method: POST

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateNoSQLAppDatabaseRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseResponse (OK)

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
    request = CreateNoSQLDatabaseV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteNoSQLClusterV2)
def delete_no_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete NoSQL Cluster (DeleteNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [DELETE]`

    You can only delete the cluster when its status is "available".

    Deleting the cluster will:
    - Remove NoSQL integration.
    - Remove all the data from the NoSQL
    - Remove all the credentials, including the Extend Appâs credentials.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: DELETE

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelDeleteNoSQLResourceResponse (OK)

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
    request = DeleteNoSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteNoSQLClusterV2)
async def delete_no_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete NoSQL Cluster (DeleteNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [DELETE]`

    You can only delete the cluster when its status is "available".

    Deleting the cluster will:
    - Remove NoSQL integration.
    - Remove all the data from the NoSQL
    - Remove all the credentials, including the Extend Appâs credentials.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: DELETE

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelDeleteNoSQLResourceResponse (OK)

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
    request = DeleteNoSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteNoSQLDatabaseV2)
def delete_no_sql_database_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes NoSQL Database for Extend App (DeleteNoSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [DELETE]`

    Deletes a NoSQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned NoSQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases

        method: DELETE

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseDeleteResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNoSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteNoSQLDatabaseV2)
async def delete_no_sql_database_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes NoSQL Database for Extend App (DeleteNoSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [DELETE]`

    Deletes a NoSQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned NoSQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases

        method: DELETE

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseDeleteResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteNoSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNoSQLAccessTunnelV2)
def get_no_sql_access_tunnel_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get NoSQL Access Tunnel (GetNoSQLAccessTunnelV2)

    Returns the NoSQL access tunnel information for a specified game namespace

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/tunnels

        method: GET

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelTunnelInfoResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNoSQLAccessTunnelV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNoSQLAccessTunnelV2)
async def get_no_sql_access_tunnel_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get NoSQL Access Tunnel (GetNoSQLAccessTunnelV2)

    Returns the NoSQL access tunnel information for a specified game namespace

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/tunnels

        method: GET

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelTunnelInfoResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNoSQLAccessTunnelV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNoSQLClusterV2)
def get_no_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get NoSQL Cluster Information (GetNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [READ]`

    Get NoSQL cluster information returns the NoSQL cluster related information by given studio/publisher namespace.

    `status` field - indicates the NoSQL cluster status:
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `available` : The cluster is accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: GET

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLResourceResponse (OK)

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
    request = GetNoSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNoSQLClusterV2)
async def get_no_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get NoSQL Cluster Information (GetNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [READ]`

    Get NoSQL cluster information returns the NoSQL cluster related information by given studio/publisher namespace.

    `status` field - indicates the NoSQL cluster status:
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `available` : The cluster is accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: GET

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLResourceResponse (OK)

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
    request = GetNoSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNoSQLDatabaseV2)
def get_no_sql_database_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get NoSQL Database for Extend App (GetNoSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [READ]`

    Get a NoSQL database information returns the NoSQL database related information by given game namespace
    and app name.

    `resourceStatus` field - indicates the NoSQL cluster status:
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `available` : The cluster is accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases

        method: GET

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNoSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNoSQLDatabaseV2)
async def get_no_sql_database_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get NoSQL Database for Extend App (GetNoSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [READ]`

    Get a NoSQL database information returns the NoSQL database related information by given game namespace
    and app name.

    `resourceStatus` field - indicates the NoSQL cluster status:
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `available` : The cluster is accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases

        method: GET

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLDatabaseResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetNoSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(StartNoSQLClusterV2)
def start_no_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Start NoSQL Cluster (StartNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

    Start NoSQL cluster.
    You can only start the cluster when its status is "stopped".

    Cluster starting process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start

        method: PUT

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StartNoSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(StartNoSQLClusterV2)
async def start_no_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Start NoSQL Cluster (StartNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

    Start NoSQL cluster.
    You can only start the cluster when its status is "stopped".

    Cluster starting process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start

        method: PUT

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StartNoSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(StopNoSQLClusterV2)
def stop_no_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stop NoSQL Cluster (StopNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

    Stop NoSQL cluster.
    You can only start the cluster when its status is "available".

    Cluster stopping process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop

        method: PUT

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StopNoSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(StopNoSQLClusterV2)
async def stop_no_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stop NoSQL Cluster (StopNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

    Stop NoSQL cluster.
    You can only start the cluster when its status is "available".

    Cluster stopping process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop

        method: PUT

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StopNoSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateNoSQLClusterV2)
def update_no_sql_cluster_v2(
    body: NosqlresourceNoSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update NoSQL Cluster Configurations (UpdateNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

    Update NoSQL cluster configurations such as min/max DCU (Database Capacity Units) for the NoSQL cluster in the given studio/publisher namespace.
    The cluster must be in an available state to allow configuration updates.

    Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: PUT

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NosqlresourceNoSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLResourceResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNoSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateNoSQLClusterV2)
async def update_no_sql_cluster_v2_async(
    body: NosqlresourceNoSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update NoSQL Cluster Configurations (UpdateNoSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

    Update NoSQL cluster configurations such as min/max DCU (Database Capacity Units) for the NoSQL cluster in the given studio/publisher namespace.
    The cluster must be in an available state to allow configuration updates.

    Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/nosql/clusters

        method: PUT

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED NosqlresourceNoSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelNoSQLResourceResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        503: Service Unavailable - ResponseErrorResponse (Service Unavailable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateNoSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
