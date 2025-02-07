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

from ..models import ModelsBulkUserIDsRequest
from ..models import ModelsBulkUserRankingResponseV3
from ..models import ModelsGetLeaderboardRankingResp
from ..models import ModelsUserRankingResponseV3
from ..models import ResponseErrorResponse

from ..operations.leaderboard_data_v3 import BulkGetUsersRankingPublicV3
from ..operations.leaderboard_data_v3 import DeleteAllUserRankingByCycleIdAdminV3
from ..operations.leaderboard_data_v3 import DeleteUserRankingAdminV3
from ..operations.leaderboard_data_v3 import DeleteUserRankingByCycleIdAdminV3
from ..operations.leaderboard_data_v3 import DeleteUserRankingByLeaderboardCodeAdminV3
from ..operations.leaderboard_data_v3 import DeleteUserRankingsAdminV3
from ..operations.leaderboard_data_v3 import GetAllTimeLeaderboardRankingAdminV3
from ..operations.leaderboard_data_v3 import GetAllTimeLeaderboardRankingPublicV3
from ..operations.leaderboard_data_v3 import GetCurrentCycleLeaderboardRankingAdminV3
from ..operations.leaderboard_data_v3 import GetCurrentCycleLeaderboardRankingPublicV3
from ..operations.leaderboard_data_v3 import GetUserRankingAdminV3
from ..operations.leaderboard_data_v3 import GetUserRankingPublicV3


@same_doc_as(BulkGetUsersRankingPublicV3)
def bulk_get_users_ranking_public_v3(
    body: ModelsBulkUserIDsRequest,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get users ranking (bulkGetUsersRankingPublicV3)

    Bulk get users ranking in leaderboard, max allowed 20 userIDs at a time.

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk

        method: POST

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkUserRankingResponseV3 (Users ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetUsersRankingPublicV3.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetUsersRankingPublicV3)
async def bulk_get_users_ranking_public_v3_async(
    body: ModelsBulkUserIDsRequest,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get users ranking (bulkGetUsersRankingPublicV3)

    Bulk get users ranking in leaderboard, max allowed 20 userIDs at a time.

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk

        method: POST

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkUserIDsRequest in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkUserRankingResponseV3 (Users ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20019: unable to parse request body | 20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetUsersRankingPublicV3.create(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAllUserRankingByCycleIdAdminV3)
def delete_all_user_ranking_by_cycle_id_admin_v3(
    cycle_id: str,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete all user ranking by cycle id (deleteAllUserRankingByCycleIdAdminV3)

    This endpoint will delete user ranking by cycleId




    Warning : This will permanently delete your data. Make sure to back up anything important before continuing.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (all user ranking in specific cycleId successfully deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 71241: forbidden environment)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserRankingByCycleIdAdminV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAllUserRankingByCycleIdAdminV3)
async def delete_all_user_ranking_by_cycle_id_admin_v3_async(
    cycle_id: str,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete all user ranking by cycle id (deleteAllUserRankingByCycleIdAdminV3)

    This endpoint will delete user ranking by cycleId




    Warning : This will permanently delete your data. Make sure to back up anything important before continuing.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (all user ranking in specific cycleId successfully deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 71241: forbidden environment)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAllUserRankingByCycleIdAdminV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingAdminV3)
def delete_user_ranking_admin_v3(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking (deleteUserRankingAdminV3)

    Delete user ranking

    Remove entry with provided userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User ranking deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingAdminV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingAdminV3)
async def delete_user_ranking_admin_v3_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking (deleteUserRankingAdminV3)

    Delete user ranking

    Remove entry with provided userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User ranking deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingAdminV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingByCycleIdAdminV3)
def delete_user_ranking_by_cycle_id_admin_v3(
    cycle_id: str,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking by cycle id (deleteUserRankingByCycleIdAdminV3)

    Delete user ranking by cycle id

    Remove entry with provided cycleId and userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User ranking deleted by cycle id)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingByCycleIdAdminV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingByCycleIdAdminV3)
async def delete_user_ranking_by_cycle_id_admin_v3_async(
    cycle_id: str,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking by cycle id (deleteUserRankingByCycleIdAdminV3)

    Delete user ranking by cycle id

    Remove entry with provided cycleId and userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (User ranking deleted by cycle id)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingByCycleIdAdminV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingByLeaderboardCodeAdminV3)
def delete_user_ranking_by_leaderboard_code_admin_v3(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete all user ranking by leaderboard code (deleteUserRankingByLeaderboardCodeAdminV3)

    This endpoint will delete user ranking by leaderboard code




    Warning : This will permanently delete your data. Make sure to back up anything important before continuing.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (all user ranking successfully deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 71241: forbidden environment)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingByLeaderboardCodeAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingByLeaderboardCodeAdminV3)
async def delete_user_ranking_by_leaderboard_code_admin_v3_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete all user ranking by leaderboard code (deleteUserRankingByLeaderboardCodeAdminV3)

    This endpoint will delete user ranking by leaderboard code




    Warning : This will permanently delete your data. Make sure to back up anything important before continuing.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (all user ranking successfully deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 71241: forbidden environment)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingByLeaderboardCodeAdminV3.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingsAdminV3)
def delete_user_rankings_admin_v3(
    leaderboard_code: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking across leaderboard(s) (deleteUserRankingsAdminV3)

    Delete user ranking across leaderboard

    Remove entry with provided userId from leaderboard.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED List[str] in query

    Responses:
        204: No Content - (User ranking deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingsAdminV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingsAdminV3)
async def delete_user_rankings_admin_v3_async(
    leaderboard_code: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking across leaderboard(s) (deleteUserRankingsAdminV3)

    Delete user ranking across leaderboard

    Remove entry with provided userId from leaderboard.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}

        method: DELETE

        tags: ["LeaderboardDataV3"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED List[str] in query

    Responses:
        204: No Content - (User ranking deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingsAdminV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingAdminV3)
def get_all_time_leaderboard_ranking_admin_v3(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingAdminV3)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingAdminV3.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingAdminV3)
async def get_all_time_leaderboard_ranking_admin_v3_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingAdminV3)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingAdminV3.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingPublicV3)
def get_all_time_leaderboard_ranking_public_v3(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingPublicV3)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV3.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingPublicV3)
async def get_all_time_leaderboard_ranking_public_v3_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingPublicV3)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV3.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentCycleLeaderboardRankingAdminV3)
def get_current_cycle_leaderboard_ranking_admin_v3(
    cycle_id: str,
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get cycle leaderboard ranking data (GetCurrentCycleLeaderboardRankingAdminV3)

    Get rankings in cycle leaderboard.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Cycle leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentCycleLeaderboardRankingAdminV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentCycleLeaderboardRankingAdminV3)
async def get_current_cycle_leaderboard_ranking_admin_v3_async(
    cycle_id: str,
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get cycle leaderboard ranking data (GetCurrentCycleLeaderboardRankingAdminV3)

    Get rankings in cycle leaderboard.

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Cycle leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentCycleLeaderboardRankingAdminV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentCycleLeaderboardRankingPublicV3)
def get_current_cycle_leaderboard_ranking_public_v3(
    cycle_id: str,
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get cycle leaderboard ranking data (GetCurrentCycleLeaderboardRankingPublicV3)

    Get rankings in cycle leaderboard.

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Cycle leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentCycleLeaderboardRankingPublicV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentCycleLeaderboardRankingPublicV3)
async def get_current_cycle_leaderboard_ranking_public_v3_async(
    cycle_id: str,
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get cycle leaderboard ranking data (GetCurrentCycleLeaderboardRankingPublicV3)

    Get rankings in cycle leaderboard.

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        cycle_id: (cycleId) REQUIRED str in path

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Cycle leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentCycleLeaderboardRankingPublicV3.create(
        cycle_id=cycle_id,
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserRankingAdminV3)
def get_user_ranking_admin_v3(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingAdminV3)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserRankingResponseV3 (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingAdminV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserRankingAdminV3)
async def get_user_ranking_admin_v3_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingAdminV3)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserRankingResponseV3 (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingAdminV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserRankingPublicV3)
def get_user_ranking_public_v3(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingPublicV3)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserRankingResponseV3 (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingPublicV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserRankingPublicV3)
async def get_user_ranking_public_v3_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingPublicV3)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardDataV3"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserRankingResponseV3 (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingPublicV3.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
