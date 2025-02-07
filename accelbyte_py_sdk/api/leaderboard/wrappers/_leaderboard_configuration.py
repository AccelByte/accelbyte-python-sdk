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
from ..models import ModelsGetAllLeaderboardConfigsPublicResp
from ..models import ModelsGetAllLeaderboardConfigsResp
from ..models import ModelsGetLeaderboardConfigResp
from ..models import ModelsLeaderboardConfigReq
from ..models import ModelsUpdateLeaderboardConfigReq
from ..models import ResponseErrorResponse
from ..models import V2GetAllLeaderboardConfigsPublicResp

from ..operations.leaderboard_configuration import CreateLeaderboardConfigurationAdminV1
from ..operations.leaderboard_configuration import (
    CreateLeaderboardConfigurationPublicV1,
)
from ..operations.leaderboard_configuration import (
    DeleteBulkLeaderboardConfigurationAdminV1,
)
from ..operations.leaderboard_configuration import DeleteLeaderboardConfigurationAdminV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationAdminV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationsAdminV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationsPublicV1
from ..operations.leaderboard_configuration import GetLeaderboardConfigurationsPublicV2
from ..operations.leaderboard_configuration import HardDeleteLeaderboardAdminV1
from ..operations.leaderboard_configuration import UpdateLeaderboardConfigurationAdminV1


@same_doc_as(CreateLeaderboardConfigurationAdminV1)
def create_leaderboard_configuration_admin_v1(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new leaderboard (createLeaderboardConfigurationAdminV1)

    Fields :




      * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


      * Maximum length for leaderboard name is 128 characters. (required).


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


      * Stat Code is related with statistic code in statistic service. (required).

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards

        method: POST

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsLeaderboardConfigReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsLeaderboardConfigReq (Leaderboard created)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error | 71242: stat code not found in namespace)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateLeaderboardConfigurationAdminV1)
async def create_leaderboard_configuration_admin_v1_async(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new leaderboard (createLeaderboardConfigurationAdminV1)

    Fields :




      * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


      * Maximum length for leaderboard name is 128 characters. (required).


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


      * Stat Code is related with statistic code in statistic service. (required).

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards

        method: POST

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsLeaderboardConfigReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsLeaderboardConfigReq (Leaderboard created)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error | 71242: stat code not found in namespace)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateLeaderboardConfigurationPublicV1)
def create_leaderboard_configuration_public_v1(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new leaderboard (createLeaderboardConfigurationPublicV1)

    Public endpoint to create a new leaderboard.



     Fields :




      * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


      * Maximum length for leaderboard name is 128 characters. (required).


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


      * Stat Code is related with statistic code in statistic service. (required).

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards

        method: POST

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsLeaderboardConfigReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsLeaderboardConfigReq (Leaderboard created)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71242: stat code not found in namespace)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLeaderboardConfigurationPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateLeaderboardConfigurationPublicV1)
async def create_leaderboard_configuration_public_v1_async(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new leaderboard (createLeaderboardConfigurationPublicV1)

    Public endpoint to create a new leaderboard.



     Fields :




      * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


      * Maximum length for leaderboard name is 128 characters. (required).


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


      * Stat Code is related with statistic code in statistic service. (required).

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards

        method: POST

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsLeaderboardConfigReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsLeaderboardConfigReq (Leaderboard created)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71242: stat code not found in namespace)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateLeaderboardConfigurationPublicV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteBulkLeaderboardConfigurationAdminV1)
def delete_bulk_leaderboard_configuration_admin_v1(
    body: ModelsDeleteBulkLeaderboardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete (deleteBulkLeaderboardConfigurationAdminV1)

    This endpoint delete multiple leaderboards configuration in one request

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete

        method: POST

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDeleteBulkLeaderboardsReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeleteBulkLeaderboardsResp (Leaderboards deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBulkLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteBulkLeaderboardConfigurationAdminV1)
async def delete_bulk_leaderboard_configuration_admin_v1_async(
    body: ModelsDeleteBulkLeaderboardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete (deleteBulkLeaderboardConfigurationAdminV1)

    This endpoint delete multiple leaderboards configuration in one request

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete

        method: POST

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDeleteBulkLeaderboardsReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsDeleteBulkLeaderboardsResp (Leaderboards deleted)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBulkLeaderboardConfigurationAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteLeaderboardConfigurationAdminV1)
def delete_leaderboard_configuration_admin_v1(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete leaderboard by leaderboardCode (deleteLeaderboardConfigurationAdminV1)

    This endpoint delete a leaderboard configuration

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: DELETE

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard deleted)

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
    request = DeleteLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteLeaderboardConfigurationAdminV1)
async def delete_leaderboard_configuration_admin_v1_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete leaderboard by leaderboardCode (deleteLeaderboardConfigurationAdminV1)

    This endpoint delete a leaderboard configuration

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: DELETE

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard deleted)

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
    request = DeleteLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationAdminV1)
def get_leaderboard_configuration_admin_v1(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get leaderboard by leaderboardCode (getLeaderboardConfigurationAdminV1)

    This endpoint returns a leaderboard configuration

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigResp (Leaderboard retrieved)

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
    request = GetLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationAdminV1)
async def get_leaderboard_configuration_admin_v1_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get leaderboard by leaderboardCode (getLeaderboardConfigurationAdminV1)

    This endpoint returns a leaderboard configuration

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigResp (Leaderboard retrieved)

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
    request = GetLeaderboardConfigurationAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsAdminV1)
def get_leaderboard_configurations_admin_v1(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsAdminV1)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_archived: (isArchived) OPTIONAL bool in query

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsResp (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsAdminV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsAdminV1)
async def get_leaderboard_configurations_admin_v1_async(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsAdminV1)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_archived: (isArchived) OPTIONAL bool in query

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsResp (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsAdminV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsPublicV1)
def get_leaderboard_configurations_public_v1(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsPublicV1)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_archived: (isArchived) OPTIONAL bool in query

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsPublicResp (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsPublicV1)
async def get_leaderboard_configurations_public_v1_async(
    is_archived: Optional[bool] = None,
    is_deleted: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (getLeaderboardConfigurationsPublicV1)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        is_archived: (isArchived) OPTIONAL bool in query

        is_deleted: (isDeleted) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetAllLeaderboardConfigsPublicResp (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV1.create(
        is_archived=is_archived,
        is_deleted=is_deleted,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetLeaderboardConfigurationsPublicV2)
def get_leaderboard_configurations_public_v2(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (GetLeaderboardConfigurationsPublicV2)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v2/public/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - V2GetAllLeaderboardConfigsPublicResp (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLeaderboardConfigurationsPublicV2)
async def get_leaderboard_configurations_public_v2_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """list all leaderboards by given namespace (GetLeaderboardConfigurationsPublicV2)

    This endpoint return all leaderboard configurations

    Properties:
        url: /leaderboard/v2/public/namespaces/{namespace}/leaderboards

        method: GET

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - V2GetAllLeaderboardConfigsPublicResp (Leaderboards retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLeaderboardConfigurationsPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(HardDeleteLeaderboardAdminV1)
def hard_delete_leaderboard_admin_v1(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """hard delete leaderboard config and data by leaderboard code (hardDeleteLeaderboardAdminV1)

    [Test Facility Only]




    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD:HARDDELETE [DELETE]'




    This endpoint will delete leaderboard configuration and its data




    Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard

        method: DELETE

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard deleted)

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
    request = HardDeleteLeaderboardAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(HardDeleteLeaderboardAdminV1)
async def hard_delete_leaderboard_admin_v1_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """hard delete leaderboard config and data by leaderboard code (hardDeleteLeaderboardAdminV1)

    [Test Facility Only]




    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD:HARDDELETE [DELETE]'




    This endpoint will delete leaderboard configuration and its data




    Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard

        method: DELETE

        tags: ["LeaderboardConfiguration"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard deleted)

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
    request = HardDeleteLeaderboardAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateLeaderboardConfigurationAdminV1)
def update_leaderboard_configuration_admin_v1(
    body: ModelsUpdateLeaderboardConfigReq,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update leaderboard by leaderboardCode (updateLeaderboardConfigurationAdminV1)

    Fields :






      * Maximum length for leaderboard name is 128 characters.


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: PUT

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateLeaderboardConfigReq in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigResp (Leaderboard updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71242: stat code not found in namespace)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71133: leaderboard configuration deleted)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLeaderboardConfigurationAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateLeaderboardConfigurationAdminV1)
async def update_leaderboard_configuration_admin_v1_async(
    body: ModelsUpdateLeaderboardConfigReq,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update leaderboard by leaderboardCode (updateLeaderboardConfigurationAdminV1)

    Fields :






      * Maximum length for leaderboard name is 128 characters.


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}

        method: PUT

        tags: ["LeaderboardConfiguration"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateLeaderboardConfigReq in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLeaderboardConfigResp (Leaderboard updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body | 71242: stat code not found in namespace)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71133: leaderboard configuration deleted)

        409: Conflict - ResponseErrorResponse (71132: leaderboard configuration already exist)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateLeaderboardConfigurationAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
