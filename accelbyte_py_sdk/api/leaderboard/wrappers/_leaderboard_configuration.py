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
from ..operations.leaderboard_configuration import UpdateLeaderboardConfigurationAdminV1


@same_doc_as(CreateLeaderboardConfigurationAdminV1)
def create_leaderboard_configuration_admin_v1(
    body: ModelsLeaderboardConfigReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new leaderboard (createLeaderboardConfigurationAdminV1)

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]

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
        201: Created - ModelsLeaderboardConfigReq (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




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

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [CREATE]

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
        201: Created - ModelsLeaderboardConfigReq (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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



    Required permission 'NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




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

    Required Permission(s):
        - NAMESPACE:{namespace}:LEADERBOARD [CREATE]

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
        201: Created - ModelsLeaderboardConfigReq (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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



    Required permission 'NAMESPACE:{namespace}:LEADERBOARD [CREATE]'




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

    Required Permission(s):
        - NAMESPACE:{namespace}:LEADERBOARD [CREATE]

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
        201: Created - ModelsLeaderboardConfigReq (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




    This endpoint delete multiple leaderboards configuration in one request

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]

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
        200: OK - ModelsDeleteBulkLeaderboardsResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




    This endpoint delete multiple leaderboards configuration in one request

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]

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
        200: OK - ModelsDeleteBulkLeaderboardsResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




    This endpoint delete a leaderboard configuration

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]

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
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]'




    This endpoint delete a leaderboard configuration

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [DELETE]

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
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




    This endpoint returns a leaderboard configuration

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]

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
        200: OK - ModelsGetLeaderboardConfigResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




    This endpoint returns a leaderboard configuration

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]

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
        200: OK - ModelsGetLeaderboardConfigResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




    This endpoint return all leaderboard configurations

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]

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
        200: OK - ModelsGetAllLeaderboardConfigsResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]'




    This endpoint return all leaderboard configurations

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [READ]

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
        200: OK - ModelsGetAllLeaderboardConfigsResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
        200: OK - ModelsGetAllLeaderboardConfigsPublicResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
        200: OK - ModelsGetAllLeaderboardConfigsPublicResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
        200: OK - V2GetAllLeaderboardConfigsPublicResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
        200: OK - V2GetAllLeaderboardConfigsPublicResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(UpdateLeaderboardConfigurationAdminV1)
def update_leaderboard_configuration_admin_v1(
    body: ModelsUpdateLeaderboardConfigReq,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update leaderboard by leaderboardCode (updateLeaderboardConfigurationAdminV1)

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]'




    Fields :






      * Maximum length for leaderboard name is 128 characters.


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]

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
        200: OK - ModelsGetLeaderboardConfigResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]'




    Fields :






      * Maximum length for leaderboard name is 128 characters.


      * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z


      * Season period must be greater than 31 days.


      * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


      * Reset Date must be a number 1 - 31. Default is '1'.


      * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


      * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:LEADERBOARD [UPDATE]

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
        200: OK - ModelsGetLeaderboardConfigResp (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
