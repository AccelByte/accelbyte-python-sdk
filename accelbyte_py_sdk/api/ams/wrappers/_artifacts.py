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

from ..models import ApiArtifactListResponse
from ..models import ApiArtifactURLResponse
from ..models import ApiArtifactUsageResponse
from ..models import ApiFleetArtifactsSampleRules
from ..models import ResponseErrorResponse

from ..operations.artifacts import ArtifactBulkDelete
from ..operations.artifacts import ArtifactDelete
from ..operations.artifacts import ArtifactGet
from ..operations.artifacts import ArtifactGetSortDirectionEnum
from ..operations.artifacts import ArtifactGetURL
from ..operations.artifacts import ArtifactUsageGet
from ..operations.artifacts import FleetArtifactSamplingRulesGet
from ..operations.artifacts import FleetArtifactSamplingRulesSet


@same_doc_as(ArtifactBulkDelete)
def artifact_bulk_delete(
    artifact_type: Optional[str] = None,
    fleet_id: Optional[str] = None,
    uploaded_before: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete artifacts that match criteria in bulk. all artifacts matching any one criteria will be deleted. at least 1 parameter is required. (ArtifactBulkDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts

        method: DELETE

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        artifact_type: (artifactType) OPTIONAL str in query

        fleet_id: (fleetId) OPTIONAL str in query

        uploaded_before: (uploadedBefore) OPTIONAL str in query

    Responses:
        202: Accepted - (delete received)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactBulkDelete.create(
        artifact_type=artifact_type,
        fleet_id=fleet_id,
        uploaded_before=uploaded_before,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ArtifactBulkDelete)
async def artifact_bulk_delete_async(
    artifact_type: Optional[str] = None,
    fleet_id: Optional[str] = None,
    uploaded_before: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete artifacts that match criteria in bulk. all artifacts matching any one criteria will be deleted. at least 1 parameter is required. (ArtifactBulkDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts

        method: DELETE

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        artifact_type: (artifactType) OPTIONAL str in query

        fleet_id: (fleetId) OPTIONAL str in query

        uploaded_before: (uploadedBefore) OPTIONAL str in query

    Responses:
        202: Accepted - (delete received)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactBulkDelete.create(
        artifact_type=artifact_type,
        fleet_id=fleet_id,
        uploaded_before=uploaded_before,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ArtifactDelete)
def artifact_delete(
    artifact_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a specified artifact (ArtifactDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}

        method: DELETE

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        artifact_id: (artifactID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (delete received)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no artifact with specifed artifactID)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactDelete.create(
        artifact_id=artifact_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ArtifactDelete)
async def artifact_delete_async(
    artifact_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a specified artifact (ArtifactDelete)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [DELETE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}

        method: DELETE

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        artifact_id: (artifactID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (delete received)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no artifact with specifed artifactID)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactDelete.create(
        artifact_id=artifact_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ArtifactGet)
def artifact_get(
    artifact_type: Optional[str] = None,
    count: Optional[int] = None,
    end_date: Optional[str] = None,
    fleet_id: Optional[str] = None,
    image_id: Optional[str] = None,
    max_size: Optional[int] = None,
    min_size: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    server_id: Optional[str] = None,
    sort_by: Optional[str] = None,
    sort_direction: Optional[Union[str, ArtifactGetSortDirectionEnum]] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all artifacts matching the provided criteria (ArtifactGet)

    Get all artifacts matching the provided search criteria. When criteria is not specified the data returned won't have been filtered on those parameters

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        artifact_type: (artifactType) OPTIONAL str in query

        count: (count) OPTIONAL int in query

        end_date: (endDate) OPTIONAL str in query

        fleet_id: (fleetID) OPTIONAL str in query

        image_id: (imageID) OPTIONAL str in query

        max_size: (maxSize) OPTIONAL int in query

        min_size: (minSize) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        server_id: (serverId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL Union[str, SortDirectionEnum] in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiArtifactListResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactGet.create(
        artifact_type=artifact_type,
        count=count,
        end_date=end_date,
        fleet_id=fleet_id,
        image_id=image_id,
        max_size=max_size,
        min_size=min_size,
        offset=offset,
        region=region,
        server_id=server_id,
        sort_by=sort_by,
        sort_direction=sort_direction,
        start_date=start_date,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ArtifactGet)
async def artifact_get_async(
    artifact_type: Optional[str] = None,
    count: Optional[int] = None,
    end_date: Optional[str] = None,
    fleet_id: Optional[str] = None,
    image_id: Optional[str] = None,
    max_size: Optional[int] = None,
    min_size: Optional[int] = None,
    offset: Optional[int] = None,
    region: Optional[str] = None,
    server_id: Optional[str] = None,
    sort_by: Optional[str] = None,
    sort_direction: Optional[Union[str, ArtifactGetSortDirectionEnum]] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all artifacts matching the provided criteria (ArtifactGet)

    Get all artifacts matching the provided search criteria. When criteria is not specified the data returned won't have been filtered on those parameters

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        artifact_type: (artifactType) OPTIONAL str in query

        count: (count) OPTIONAL int in query

        end_date: (endDate) OPTIONAL str in query

        fleet_id: (fleetID) OPTIONAL str in query

        image_id: (imageID) OPTIONAL str in query

        max_size: (maxSize) OPTIONAL int in query

        min_size: (minSize) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        server_id: (serverId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL Union[str, SortDirectionEnum] in query

        start_date: (startDate) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiArtifactListResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactGet.create(
        artifact_type=artifact_type,
        count=count,
        end_date=end_date,
        fleet_id=fleet_id,
        image_id=image_id,
        max_size=max_size,
        min_size=min_size,
        offset=offset,
        region=region,
        server_id=server_id,
        sort_by=sort_by,
        sort_direction=sort_direction,
        start_date=start_date,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ArtifactGetURL)
def artifact_get_url(
    artifact_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a signed URL for a specific artifact (ArtifactGetURL)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        artifact_id: (artifactID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiArtifactURLResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no artifact with specifed artifactID)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactGetURL.create(
        artifact_id=artifact_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ArtifactGetURL)
async def artifact_get_url_async(
    artifact_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a signed URL for a specific artifact (ArtifactGetURL)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        artifact_id: (artifactID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiArtifactURLResponse (success)

        400: Bad Request - ResponseErrorResponse (invalid data in request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (no artifact with specifed artifactID)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactGetURL.create(
        artifact_id=artifact_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ArtifactUsageGet)
def artifact_usage_get(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """retrieve artifact storage usage for the namespace (ArtifactUsageGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts/usage

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiArtifactUsageResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactUsageGet.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ArtifactUsageGet)
async def artifact_usage_get_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """retrieve artifact storage usage for the namespace (ArtifactUsageGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/artifacts/usage

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiArtifactUsageResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ArtifactUsageGet.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetArtifactSamplingRulesGet)
def fleet_artifact_sampling_rules_get(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the sampling rules for a fleet (FleetArtifactSamplingRulesGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetArtifactsSampleRules (success)

        400: Bad Request - ResponseErrorResponse (invalid fleet ID)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (artifact sampling rules not found for fleet)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetArtifactSamplingRulesGet.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetArtifactSamplingRulesGet)
async def fleet_artifact_sampling_rules_get_async(
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get the sampling rules for a fleet (FleetArtifactSamplingRulesGet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules

        method: GET

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetArtifactsSampleRules (success)

        400: Bad Request - ResponseErrorResponse (invalid fleet ID)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (artifact sampling rules not found for fleet)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetArtifactSamplingRulesGet.create(
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetArtifactSamplingRulesSet)
def fleet_artifact_sampling_rules_set(
    body: ApiFleetArtifactsSampleRules,
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """set sampling rules for a fleet (FleetArtifactSamplingRulesSet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules

        method: PUT

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetArtifactsSampleRules in body

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetArtifactsSampleRules (success)

        400: Bad Request - ResponseErrorResponse (invalid fleet ID)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetArtifactSamplingRulesSet.create(
        body=body,
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetArtifactSamplingRulesSet)
async def fleet_artifact_sampling_rules_set_async(
    body: ApiFleetArtifactsSampleRules,
    fleet_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """set sampling rules for a fleet (FleetArtifactSamplingRulesSet)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [UPDATE]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules

        method: PUT

        tags: ["Artifacts"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiFleetArtifactsSampleRules in body

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiFleetArtifactsSampleRules (success)

        400: Bad Request - ResponseErrorResponse (invalid fleet ID)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (fleet not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetArtifactSamplingRulesSet.create(
        body=body,
        fleet_id=fleet_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
