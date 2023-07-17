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

from ..models import ApiFleetClaimByKeysReq
from ..models import ApiFleetClaimReq
from ..models import ApiFleetClaimResponse
from ..models import ApiFleetCreateResponse
from ..models import ApiFleetGetResponse
from ..models import ApiFleetListResponse
from ..models import ApiFleetParameters
from ..models import ApiFleetServersResponse
from ..models import ResponseErrorResponse

from ..operations.fleets import FleetClaimByID
from ..operations.fleets import FleetClaimByKeys
from ..operations.fleets import FleetCreate
from ..operations.fleets import FleetDelete
from ..operations.fleets import FleetGet
from ..operations.fleets import FleetList
from ..operations.fleets import FleetServers
from ..operations.fleets import FleetUpdate


@same_doc_as(FleetClaimByID)
def fleet_claim_by_id(
    body: ApiFleetClaimReq,
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """claim a Dedicated Server from a specific fleet (FleetClaimByID)

    Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim

        method: PUT

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetClaimReq in body

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetClaimResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetClaimByID.create(
        body=body,
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetClaimByID)
async def fleet_claim_by_id_async(
    body: ApiFleetClaimReq,
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """claim a Dedicated Server from a specific fleet (FleetClaimByID)

    Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim

        method: PUT

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetClaimReq in body

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetClaimResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetClaimByID.create(
        body=body,
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetClaimByKeys)
def fleet_claim_by_keys(
    body: ApiFleetClaimByKeysReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """claim a Dedicated Server from fleets with matching claim keys (FleetClaimByKeys)

    Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/servers/claim

        method: PUT

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetClaimByKeysReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetClaimResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no matching DS available)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetClaimByKeys.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetClaimByKeys)
async def fleet_claim_by_keys_async(
    body: ApiFleetClaimByKeysReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """claim a Dedicated Server from fleets with matching claim keys (FleetClaimByKeys)

    Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]

    Properties:
        url: /ams/v1/namespaces/{namespace}/servers/claim

        method: PUT

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetClaimByKeysReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetClaimResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no matching DS available)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetClaimByKeys.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetCreate)
def fleet_create(
    body: ApiFleetParameters,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create fleet (FleetCreate)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets

        method: POST

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetParameters in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiFleetCreateResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetCreate.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetCreate)
async def fleet_create_async(
    body: ApiFleetParameters,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create fleet (FleetCreate)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets

        method: POST

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetParameters in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiFleetCreateResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetCreate.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetDelete)
def fleet_delete(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a fleet (FleetDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}

        method: DELETE

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (no content)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetDelete.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetDelete)
async def fleet_delete_async(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a fleet (FleetDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}

        method: DELETE

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (no content)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetDelete.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetGet)
def fleet_get(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a fleet (FleetGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}

        method: GET

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetGetResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetGet.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetGet)
async def fleet_get_async(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a fleet (FleetGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}

        method: GET

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetGetResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetGet.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetList)
def fleet_list(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a list of all fleets in the namespace (FleetList)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets

        method: GET

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetListResponse (success)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetList.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetList)
async def fleet_list_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a list of all fleets in the namespace (FleetList)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets

        method: GET

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetListResponse (success)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetList.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetServers)
def fleet_servers(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get server details and counts for a fleet (FleetServers)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers

        method: GET

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServersResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetServers.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetServers)
async def fleet_servers_async(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get server details and counts for a fleet (FleetServers)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers

        method: GET

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServersResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetServers.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetUpdate)
def fleet_update(
    body: ApiFleetParameters,
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a fleet – overrides current data (FleetUpdate)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}

        method: PUT

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetParameters in body

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (no content)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetUpdate.create(
        body=body,
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetUpdate)
async def fleet_update_async(
    body: ApiFleetParameters,
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a fleet – overrides current data (FleetUpdate)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}

        method: PUT

        tags: ["Fleets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetParameters in body

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (no content)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FleetUpdate.create(
        body=body,
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
