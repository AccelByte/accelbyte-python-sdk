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

from ..models import ApimodelCreateSQLAppDatabaseRequest
from ..models import ApimodelCreateSQLDatabaseCredentialRequest
from ..models import ApimodelDeleteSQLResourceResponse
from ..models import ApimodelSQLAppListResponse
from ..models import ApimodelSQLDatabaseCredentialResponse
from ..models import ApimodelSQLDatabaseDeleteResponse
from ..models import ApimodelSQLDatabaseResponse
from ..models import ApimodelSQLResourceResponse
from ..models import ResponseErrorResponse
from ..models import SqlresourceSQLResourceConfiguration

from ..operations.managed_resources_sql import CreateSQLClusterV2
from ..operations.managed_resources_sql import CreateSQLDatabaseCredentialV2
from ..operations.managed_resources_sql import CreateSQLDatabaseV2
from ..operations.managed_resources_sql import DeleteSQLClusterV2
from ..operations.managed_resources_sql import DeleteSQLDatabaseV2
from ..operations.managed_resources_sql import GetSQLAppListV2
from ..operations.managed_resources_sql import GetSQLClusterV2
from ..operations.managed_resources_sql import GetSQLDatabaseV2
from ..operations.managed_resources_sql import StartSQLClusterV2
from ..operations.managed_resources_sql import StopSQLClusterV2
from ..operations.managed_resources_sql import UpdateSQLClusterV2


@same_doc_as(CreateSQLClusterV2)
def create_sql_cluster_v2(
    body: SqlresourceSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates SQL Cluster (CreateSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [CREATE]`

    Provision SQL database cluster and instances that can be used by extend apps in game namespace within the studio.
    Only one SQL resource can be created for one studio/publisher namespace.

    Provisioning process is done asynchronously, you can check from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: POST

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SqlresourceSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLResourceResponse (OK)

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
    request = CreateSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateSQLClusterV2)
async def create_sql_cluster_v2_async(
    body: SqlresourceSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates SQL Cluster (CreateSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [CREATE]`

    Provision SQL database cluster and instances that can be used by extend apps in game namespace within the studio.
    Only one SQL resource can be created for one studio/publisher namespace.

    Provisioning process is done asynchronously, you can check from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: POST

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SqlresourceSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLResourceResponse (OK)

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
    request = CreateSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateSQLDatabaseCredentialV2)
def create_sql_database_credential_v2(
    app: str,
    body: ApimodelCreateSQLDatabaseCredentialRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates a new database credential for the customer (CreateSQLDatabaseCredentialV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASECREDENTIALS [CREATE]`

    Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials

        method: POST

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateSQLDatabaseCredentialRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseCredentialResponse (OK)

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
    request = CreateSQLDatabaseCredentialV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateSQLDatabaseCredentialV2)
async def create_sql_database_credential_v2_async(
    app: str,
    body: ApimodelCreateSQLDatabaseCredentialRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates a new database credential for the customer (CreateSQLDatabaseCredentialV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASECREDENTIALS [CREATE]`

    Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials

        method: POST

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateSQLDatabaseCredentialRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseCredentialResponse (OK)

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
    request = CreateSQLDatabaseCredentialV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateSQLDatabaseV2)
def create_sql_database_v2(
    app: str,
    body: ApimodelCreateSQLAppDatabaseRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates SQL Database for Extend App (CreateSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [CREATE]`

    Creates a SQL database along with its credentials associated with given extend app. The database will be created in the provisioned SQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases

        method: POST

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateSQLAppDatabaseRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseResponse (OK)

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
    request = CreateSQLDatabaseV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateSQLDatabaseV2)
async def create_sql_database_v2_async(
    app: str,
    body: ApimodelCreateSQLAppDatabaseRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates SQL Database for Extend App (CreateSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [CREATE]`

    Creates a SQL database along with its credentials associated with given extend app. The database will be created in the provisioned SQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases

        method: POST

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateSQLAppDatabaseRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseResponse (OK)

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
    request = CreateSQLDatabaseV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSQLClusterV2)
def delete_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete SQL Cluster (DeleteSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [DELETE]`

    You can only delete the cluster when its status is "available".

    Deleting the cluster will:
    - Remove SQL integration.
    - Remove all the data from the SQL
    - Remove all the credentials, including the Extend Appâs credentials.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: DELETE

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelDeleteSQLResourceResponse (OK)

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
    request = DeleteSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSQLClusterV2)
async def delete_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete SQL Cluster (DeleteSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [DELETE]`

    You can only delete the cluster when its status is "available".

    Deleting the cluster will:
    - Remove SQL integration.
    - Remove all the data from the SQL
    - Remove all the credentials, including the Extend Appâs credentials.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: DELETE

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelDeleteSQLResourceResponse (OK)

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
    request = DeleteSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSQLDatabaseV2)
def delete_sql_database_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes SQL Database for Extend App (DeleteSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [DELETE]`

    Deletes a SQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned SQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases

        method: DELETE

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseDeleteResponse (OK)

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
    request = DeleteSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSQLDatabaseV2)
async def delete_sql_database_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deletes SQL Database for Extend App (DeleteSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [DELETE]`

    Deletes a SQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned SQL cluster.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases

        method: DELETE

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseDeleteResponse (OK)

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
    request = DeleteSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSQLAppListV2)
def get_sql_app_list_v2(
    resource_id: str,
    app_name: Optional[str] = None,
    game_namespace: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List of Extend App using SQL (GetSQLAppListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [READ]`

    Get List of Extend App using SQL database by given studio/publisher namespace and the SQL cluster resourceId.
    - `available` : The cluster is accessible.
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps

        method: GET

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

        app_name: (appName) OPTIONAL str in query

        game_namespace: (gameNamespace) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelSQLAppListResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSQLAppListV2.create(
        resource_id=resource_id,
        app_name=app_name,
        game_namespace=game_namespace,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSQLAppListV2)
async def get_sql_app_list_v2_async(
    resource_id: str,
    app_name: Optional[str] = None,
    game_namespace: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get List of Extend App using SQL (GetSQLAppListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [READ]`

    Get List of Extend App using SQL database by given studio/publisher namespace and the SQL cluster resourceId.
    - `available` : The cluster is accessible.
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps

        method: GET

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        resource_id: (resourceId) REQUIRED str in path

        app_name: (appName) OPTIONAL str in query

        game_namespace: (gameNamespace) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelSQLAppListResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSQLAppListV2.create(
        resource_id=resource_id,
        app_name=app_name,
        game_namespace=game_namespace,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSQLClusterV2)
def get_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get SQL Cluster Information (GetSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [READ]`

    Get SQL cluster information returns the SQL cluster related information by given studio/publisher namespace.

    `status` field - indicates the SQL cluster status:
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `available` : The cluster is accessible.
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: GET

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLResourceResponse (OK)

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
    request = GetSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSQLClusterV2)
async def get_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get SQL Cluster Information (GetSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [READ]`

    Get SQL cluster information returns the SQL cluster related information by given studio/publisher namespace.

    `status` field - indicates the SQL cluster status:
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `available` : The cluster is accessible.
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: GET

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLResourceResponse (OK)

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
    request = GetSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSQLDatabaseV2)
def get_sql_database_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get SQL Database for Extend App (GetSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [READ]`

    Get a SQL database information returns the SQL database related information by given game namespace
    and app name.

    `resourceStatus` field - indicates the SQL cluster status:
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `available` : The cluster is accessible.
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases

        method: GET

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSQLDatabaseV2)
async def get_sql_database_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get SQL Database for Extend App (GetSQLDatabaseV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [READ]`

    Get a SQL database information returns the SQL database related information by given game namespace
    and app name.

    `resourceStatus` field - indicates the SQL cluster status:
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `available` : The cluster is accessible.
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `unknown` : The cluster status is not recognized
    - `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases

        method: GET

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLDatabaseResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSQLDatabaseV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(StartSQLClusterV2)
def start_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Start SQL Cluster (StartSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

    Start SQL cluster.
    You can only start the cluster when its status is "stopped".

    Cluster starting process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters/start

        method: PUT

        tags: ["Managed Resources - SQL"]

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
    request = StartSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(StartSQLClusterV2)
async def start_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Start SQL Cluster (StartSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

    Start SQL cluster.
    You can only start the cluster when its status is "stopped".

    Cluster starting process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters/start

        method: PUT

        tags: ["Managed Resources - SQL"]

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
    request = StartSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(StopSQLClusterV2)
def stop_sql_cluster_v2(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stop SQL Cluster (StopSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

    Stop SQL cluster.
    You can only start the cluster when its status is "available".

    Cluster stopping process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters/stop

        method: PUT

        tags: ["Managed Resources - SQL"]

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
    request = StopSQLClusterV2.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(StopSQLClusterV2)
async def stop_sql_cluster_v2_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stop SQL Cluster (StopSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

    Stop SQL cluster.
    You can only start the cluster when its status is "available".

    Cluster stopping process may take some time to complete.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters/stop

        method: PUT

        tags: ["Managed Resources - SQL"]

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
    request = StopSQLClusterV2.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSQLClusterV2)
def update_sql_cluster_v2(
    body: SqlresourceSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update SQL Cluster Configurations (UpdateSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

    Update SQL cluster configurations such as min/max ACU (AuroraDB Capacity Units) for the SQL cluster in the given studio/publisher namespace.
    The cluster must be in an available state to allow configuration updates.

    Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: PUT

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SqlresourceSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLResourceResponse (OK)

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
    request = UpdateSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSQLClusterV2)
async def update_sql_cluster_v2_async(
    body: SqlresourceSQLResourceConfiguration,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update SQL Cluster Configurations (UpdateSQLClusterV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

    Update SQL cluster configurations such as min/max ACU (AuroraDB Capacity Units) for the SQL cluster in the given studio/publisher namespace.
    The cluster must be in an available state to allow configuration updates.

    Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/sql/clusters

        method: PUT

        tags: ["Managed Resources - SQL"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SqlresourceSQLResourceConfiguration in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelSQLResourceResponse (OK)

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
    request = UpdateSQLClusterV2.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
