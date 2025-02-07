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

from ..models import ModelsDeleteBulkLeaderboardsReq
from ..models import ModelsDeleteBulkLeaderboardsResp
from ..models import ModelsGetAllLeaderboardConfigsPublicRespV3
from ..models import ModelsGetAllLeaderboardConfigsRespV3
from ..models import ModelsGetLeaderboardConfigPublicRespV3
from ..models import ModelsGetLeaderboardConfigRespV3
from ..models import ModelsLeaderboardConfigReqV3
from ..models import ModelsUpdateLeaderboardConfigReqV3
from ..models import ResponseErrorResponse

from ..operations.leaderboard_configuration_v3 import (
    CreateLeaderboardConfigurationAdminV3,
)
from ..operations.leaderboard_configuration_v3 import (
    DeleteBulkLeaderboardConfigurationAdminV3,
)
from ..operations.leaderboard_configuration_v3 import (
    DeleteLeaderboardConfigurationAdminV3,
)
from ..operations.leaderboard_configuration_v3 import GetLeaderboardConfigurationAdminV3
from ..operations.leaderboard_configuration_v3 import (
    GetLeaderboardConfigurationPublicV3,
)
from ..operations.leaderboard_configuration_v3 import (
    GetLeaderboardConfigurationsAdminV3,
)
from ..operations.leaderboard_configuration_v3 import (
    GetLeaderboardConfigurationsPublicV3,
)
from ..operations.leaderboard_configuration_v3 import HardDeleteLeaderboardAdminV3
from ..operations.leaderboard_configuration_v3 import (
    UpdateLeaderboardConfigurationAdminV3,
)


@same_doc_as(CreateLeaderboardConfigurationAdminV3)
def create_leaderboard_configuration_admin_v3(
    body: ModelsLeaderboardConfigReqV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new leaderboard (createLeaderboardConfigurationAdminV3)

    Fields :




      * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


      * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


      * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


      * iconURL: leaderboard icon image url. (optional).


      * allTime: if true, all time leaderboard will be created. (required).


      * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


      * statCode: Stat Code is related with statistic code in statistic service. (required).


      * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards

        method: POST

        tags: ["LeaderboardConfigurationV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsLeaderboardConfigReqV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGetLeaderboardConfigRespV3 (Leaderboard created)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71242: stat code not found in namespace | 71243: cycle doesn't belong to the stat code | 71244: cycle is already stopped)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLeaderboardConfigurationAdminV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateLeaderboardConfigurationAdminV3)
async def create_leaderboard_configuration_admin_v3_async(
    body: ModelsLeaderboardConfigReqV3,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new leaderboard (createLeaderboardConfigurationAdminV3)

    Fields :




      * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


      * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


      * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


      * iconURL: leaderboard icon image url. (optional).


      * allTime: if true, all time leaderboard will be created. (required).


      * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


      * statCode: Stat Code is related with statistic code in statistic service. (required).


      * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards

        method: POST

        tags: ["LeaderboardConfigurationV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsLeaderboardConfigReqV3 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsGetLeaderboardConfigRespV3 (Leaderboard created)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71242: stat code not found in namespace | 71243: cycle doesn't belong to the stat code | 71244: cycle is already stopped)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLeaderboardConfigurationAdminV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteBulkLeaderboardConfigurationAdminV3)
def delete_bulk_leaderboard_configuration_admin_v3(
    body: ModelsDeleteBulkLeaderboardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete (deleteBulkLeaderboardConfigurationAdminV3)

    This endpoint delete multiple leaderboards configuration in one request

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete

        method: POST

        tags: ["LeaderboardConfigurationV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDeleteBulkLeaderboardsReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeleteBulkLeaderboardsResp (Leaderboard deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBulkLeaderboardConfigurationAdminV3.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteBulkLeaderboardConfigurationAdminV3)
async def delete_bulk_leaderboard_configuration_admin_v3_async(
    body: ModelsDeleteBulkLeaderboardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete (deleteBulkLeaderboardConfigurationAdminV3)

    This endpoint delete multiple leaderboards configuration in one request

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete

        method: POST

        tags: ["LeaderboardConfigurationV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDeleteBulkLeaderboardsReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeleteBulkLeaderboardsResp (Leaderboard deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBulkLeaderboardConfigurationAdminV3.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteLeaderboardConfigurationAdminV3)
def delete_leaderboard_configuration_admin_v3(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete leaderboard by leaderboardCode (deleteLeaderboardConfigurationAdminV3)

    This endpoint delete a leaderboard configuration

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: DELETE

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard successfully deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteLeaderboardConfigurationAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteLeaderboardConfigurationAdminV3)
async def delete_leaderboard_configuration_admin_v3_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete leaderboard by leaderboardCode (deleteLeaderboardConfigurationAdminV3)

    This endpoint delete a leaderboard configuration

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: DELETE

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard successfully deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteLeaderboardConfigurationAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationAdminV3)
def get_leaderboard_configuration_admin_v3(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get leaderboard by leaderboardCode (getLeaderboardConfigurationAdminV3)

    This endpoint returns a leaderboard configuration

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigRespV3 (Leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationAdminV3)
async def get_leaderboard_configuration_admin_v3_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get leaderboard by leaderboardCode (getLeaderboardConfigurationAdminV3)

    This endpoint returns a leaderboard configuration

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigRespV3 (Leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationPublicV3)
def get_leaderboard_configuration_public_v3(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get leaderboard by leaderboardCode (getLeaderboardConfigurationPublicV3)

    This endpoint returns a leaderboard configuration

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigPublicRespV3 (Leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationPublicV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationPublicV3)
async def get_leaderboard_configuration_public_v3_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get leaderboard by leaderboardCode (getLeaderboardConfigurationPublicV3)

    This endpoint returns a leaderboard configuration

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigPublicRespV3 (Leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationPublicV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsAdminV3)
def get_leaderboard_configurations_admin_v3(
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsAdminV3)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsRespV3 (Leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsAdminV3.create(
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsAdminV3)
async def get_leaderboard_configurations_admin_v3_async(
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsAdminV3)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsRespV3 (Leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsAdminV3.create(
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsPublicV3)
def get_leaderboard_configurations_public_v3(
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsPublicV3)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsPublicRespV3 (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV3.create(
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsPublicV3)
async def get_leaderboard_configurations_public_v3_async(
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsPublicV3)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsPublicRespV3 (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV3.create(
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(HardDeleteLeaderboardAdminV3)
def hard_delete_leaderboard_admin_v3(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """hard delete leaderboard config and data by leaderboard code (hardDeleteLeaderboardAdminV3)

    [Test Facility Only]




    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD:HARDDELETE [DELETE]'




    This endpoint will delete leaderboard configuration and its data




    Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard

        method: DELETE

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard successfully deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = HardDeleteLeaderboardAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(HardDeleteLeaderboardAdminV3)
async def hard_delete_leaderboard_admin_v3_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """hard delete leaderboard config and data by leaderboard code (hardDeleteLeaderboardAdminV3)

    [Test Facility Only]




    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD:HARDDELETE [DELETE]'




    This endpoint will delete leaderboard configuration and its data




    Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard

        method: DELETE

        tags: ["LeaderboardConfigurationV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard successfully deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = HardDeleteLeaderboardAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateLeaderboardConfigurationAdminV3)
def update_leaderboard_configuration_admin_v3(
    body: ModelsUpdateLeaderboardConfigReqV3,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update leaderboard by leaderboardCode (updateLeaderboardConfigurationAdminV3)

    Fields :




      * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


      * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


      * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


      * iconURL: leaderboard icon image url. (optional).


      * allTime: if true, all time leaderboard will be created. (required).


      * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


      * statCode: Stat Code is related with statistic code in statistic service. (required).


      * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: PUT

        tags: ["LeaderboardConfigurationV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateLeaderboardConfigReqV3 in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigRespV3 (Leaderboard updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71243: cycle doesn't belong to the stat code | 71244: cycle is already stopped)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71242: stat code not found in namespace | 71133: leaderboard configuration deleted)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLeaderboardConfigurationAdminV3.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateLeaderboardConfigurationAdminV3)
async def update_leaderboard_configuration_admin_v3_async(
    body: ModelsUpdateLeaderboardConfigReqV3,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update leaderboard by leaderboardCode (updateLeaderboardConfigurationAdminV3)

    Fields :




      * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


      * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


      * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


      * iconURL: leaderboard icon image url. (optional).


      * allTime: if true, all time leaderboard will be created. (required).


      * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


      * statCode: Stat Code is related with statistic code in statistic service. (required).


      * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: PUT

        tags: ["LeaderboardConfigurationV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateLeaderboardConfigReqV3 in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigRespV3 (Leaderboard updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71243: cycle doesn't belong to the stat code | 71244: cycle is already stopped)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71242: stat code not found in namespace | 71133: leaderboard configuration deleted)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLeaderboardConfigurationAdminV3.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
