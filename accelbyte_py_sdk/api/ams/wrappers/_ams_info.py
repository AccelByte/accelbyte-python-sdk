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

from ..models import ApiAMSRegionsResponse
from ..models import ApiAvailableInstanceTypesResponse
from ..models import ResponseErrorResponse

from ..operations.ams_info import InfoRegions
from ..operations.ams_info import InfoSupportedInstances


@same_doc_as(InfoRegions)
def info_regions(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the list of available AMS regions. (InfoRegions)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/regions

        method: GET

        tags: ["AMS Info"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAMSRegionsResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = InfoRegions.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(InfoRegions)
async def info_regions_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the list of available AMS regions. (InfoRegions)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/regions

        method: GET

        tags: ["AMS Info"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAMSRegionsResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = InfoRegions.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(InfoSupportedInstances)
def info_supported_instances(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of available VM configurations (InfoSupportedInstances)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/supported-instances

        method: GET

        tags: ["AMS Info"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAvailableInstanceTypesResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = InfoSupportedInstances.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(InfoSupportedInstances)
async def info_supported_instances_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a list of available VM configurations (InfoSupportedInstances)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ARMADA [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/supported-instances

        method: GET

        tags: ["AMS Info"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiAvailableInstanceTypesResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = InfoSupportedInstances.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
