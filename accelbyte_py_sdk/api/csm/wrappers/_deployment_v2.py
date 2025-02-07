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

from ..models import ApimodelCreateDeploymentV2Request
from ..models import ApimodelCreateDeploymentV2Response
from ..models import ApimodelGetDeploymentListV2DataItem
from ..models import ApimodelGetDeploymentListV2Request
from ..models import ApimodelGetDeploymentListV2Response
from ..models import ResponseErrorResponse

from ..operations.deployment_v2 import CreateDeploymentV2
from ..operations.deployment_v2 import DeleteDeploymentV2
from ..operations.deployment_v2 import GetDeploymentV2
from ..operations.deployment_v2 import GetListOfDeploymentV2


@same_doc_as(CreateDeploymentV2)
def create_deployment_v2(
    app: str,
    body: ApimodelCreateDeploymentV2Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates Deployment (CreateDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

    Creates Deployment for extend service

    This Endpoint will create new deployment and apply all of the secrets and variable as environment variable

    Required:
    - Valid Access Token
    - Valid Image Version Created on Uploading image with docker or other method
    - Valid App name
    - Valid Namespace name

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments

        method: POST

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateDeploymentV2Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelCreateDeploymentV2Response

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
    request = CreateDeploymentV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateDeploymentV2)
async def create_deployment_v2_async(
    app: str,
    body: ApimodelCreateDeploymentV2Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates Deployment (CreateDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

    Creates Deployment for extend service

    This Endpoint will create new deployment and apply all of the secrets and variable as environment variable

    Required:
    - Valid Access Token
    - Valid Image Version Created on Uploading image with docker or other method
    - Valid App name
    - Valid Namespace name

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments

        method: POST

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateDeploymentV2Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelCreateDeploymentV2Response

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
    request = CreateDeploymentV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteDeploymentV2)
def delete_deployment_v2(
    deployment_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment by Deployment ID (DeleteDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

    Delete Deployment information by given DeploymentID

    This endpoint will delete release object for the service deployment in the cluster

    Required: Valid Access Token

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}

        method: DELETE

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment_id: (deploymentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeploymentV2.create(
        deployment_id=deployment_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteDeploymentV2)
async def delete_deployment_v2_async(
    deployment_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Deployment by Deployment ID (DeleteDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

    Delete Deployment information by given DeploymentID

    This endpoint will delete release object for the service deployment in the cluster

    Required: Valid Access Token

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}

        method: DELETE

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment_id: (deploymentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content -

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteDeploymentV2.create(
        deployment_id=deployment_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetDeploymentV2)
def get_deployment_v2(
    deployment_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Deployment by Deployment ID (GetDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

    Get Deployment information by given DeploymentID

    This endpoint intended to get Deployment information.

    Required: Valid Access Token

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}

        method: GET

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment_id: (deploymentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetDeploymentListV2DataItem

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDeploymentV2.create(
        deployment_id=deployment_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDeploymentV2)
async def get_deployment_v2_async(
    deployment_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Deployment by Deployment ID (GetDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

    Get Deployment information by given DeploymentID

    This endpoint intended to get Deployment information.

    Required: Valid Access Token

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}

        method: GET

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment_id: (deploymentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetDeploymentListV2DataItem

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDeploymentV2.create(
        deployment_id=deployment_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetListOfDeploymentV2)
def get_list_of_deployment_v2(
    body: ApimodelGetDeploymentListV2Request,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fetches the List of Deployments (GetListOfDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

    Filters the List of Deployments

    This endpoint intended to get list of Deployment done for the given publisher and game.
    Request :
    - appIds : list of app ids
    - deploymentIds: list of deployment ids
    - statuses:
    deployment-in-progress
    deployment-failed
    deployment-timeout
    deployment-running
    deployment-down
    Required: Valid Access Token

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/deployments

        method: POST

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelGetDeploymentListV2Request in body

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelGetDeploymentListV2Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfDeploymentV2.create(
        body=body,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetListOfDeploymentV2)
async def get_list_of_deployment_v2_async(
    body: ApimodelGetDeploymentListV2Request,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fetches the List of Deployments (GetListOfDeploymentV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

    Filters the List of Deployments

    This endpoint intended to get list of Deployment done for the given publisher and game.
    Request :
    - appIds : list of app ids
    - deploymentIds: list of deployment ids
    - statuses:
    deployment-in-progress
    deployment-failed
    deployment-timeout
    deployment-running
    deployment-down
    Required: Valid Access Token

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/deployments

        method: POST

        tags: ["Deployment V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelGetDeploymentListV2Request in body

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelGetDeploymentListV2Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfDeploymentV2.create(
        body=body,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
