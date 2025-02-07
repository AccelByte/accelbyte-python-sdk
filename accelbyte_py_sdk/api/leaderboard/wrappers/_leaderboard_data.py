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

from ..models import ModelsArchiveLeaderboardReq
from ..models import ModelsArchiveLeaderboardSignedURLResponse
from ..models import ModelsGetLeaderboardRankingResp
from ..models import ModelsUpdateUserPointAdminV1Request
from ..models import ModelsUpdateUserPointAdminV1Response
from ..models import ModelsUserRankingResponse
from ..models import ResponseErrorResponse
from ..models import V2GetPublicLeaderboardRankingResponse

from ..operations.leaderboard_data import (
    AdminGetArchivedLeaderboardRankingDataV1Handler,
)
from ..operations.leaderboard_data import CreateArchivedLeaderboardRankingDataV1Handler
from ..operations.leaderboard_data import DeleteUserRankingAdminV1
from ..operations.leaderboard_data import DeleteUserRankingByLeaderboardCodeAdminV1
from ..operations.leaderboard_data import DeleteUserRankingPublicV1
from ..operations.leaderboard_data import DeleteUserRankingsAdminV1
from ..operations.leaderboard_data import GetAllTimeLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetAllTimeLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetAllTimeLeaderboardRankingPublicV2
from ..operations.leaderboard_data import GetArchivedLeaderboardRankingDataV1Handler
from ..operations.leaderboard_data import GetCurrentMonthLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetCurrentMonthLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetCurrentSeasonLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetCurrentSeasonLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetCurrentWeekLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetCurrentWeekLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetTodayLeaderboardRankingAdminV1
from ..operations.leaderboard_data import GetTodayLeaderboardRankingPublicV1
from ..operations.leaderboard_data import GetUserRankingAdminV1
from ..operations.leaderboard_data import GetUserRankingPublicV1
from ..operations.leaderboard_data import UpdateUserPointAdminV1


@same_doc_as(AdminGetArchivedLeaderboardRankingDataV1Handler)
def admin_get_archived_leaderboard_ranking_data_v1_handler(
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get signed url for archive all time leaderboard ranking data (AdminGetArchivedLeaderboardRankingDataV1Handler)

    Admin Get signed url in an all time leaderboard that archived. Notes: This will be a bulk endpoint to get sign url

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slug: (slug) OPTIONAL str in query

        leaderboard_codes: (leaderboardCodes) REQUIRED str in query

    Responses:
        200: OK - List[ModelsArchiveLeaderboardSignedURLResponse] (leaderboard archive retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71239: leaderboard is not archived)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetArchivedLeaderboardRankingDataV1Handler)
async def admin_get_archived_leaderboard_ranking_data_v1_handler_async(
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Get signed url for archive all time leaderboard ranking data (AdminGetArchivedLeaderboardRankingDataV1Handler)

    Admin Get signed url in an all time leaderboard that archived. Notes: This will be a bulk endpoint to get sign url

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        slug: (slug) OPTIONAL str in query

        leaderboard_codes: (leaderboardCodes) REQUIRED str in query

    Responses:
        200: OK - List[ModelsArchiveLeaderboardSignedURLResponse] (leaderboard archive retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71239: leaderboard is not archived)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateArchivedLeaderboardRankingDataV1Handler)
def create_archived_leaderboard_ranking_data_v1_handler(
    body: ModelsArchiveLeaderboardReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Archive a leadeboard data ranking (CreateArchivedLeaderboardRankingDataV1Handler)

    Archive leaderboard ranking data for specified leaderboard codes. NOTE: This will remove all data of the leaderboard on every slug,
    remove the leaderboard code on stat mapping, and remove the leaderboard on the queue reset. This will be a bulk endpoint

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived

        method: POST

        tags: ["LeaderboardData"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsArchiveLeaderboardReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (leaderboard data ranking archived)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateArchivedLeaderboardRankingDataV1Handler.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateArchivedLeaderboardRankingDataV1Handler)
async def create_archived_leaderboard_ranking_data_v1_handler_async(
    body: ModelsArchiveLeaderboardReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Archive a leadeboard data ranking (CreateArchivedLeaderboardRankingDataV1Handler)

    Archive leaderboard ranking data for specified leaderboard codes. NOTE: This will remove all data of the leaderboard on every slug,
    remove the leaderboard code on stat mapping, and remove the leaderboard on the queue reset. This will be a bulk endpoint

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived

        method: POST

        tags: ["LeaderboardData"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsArchiveLeaderboardReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (leaderboard data ranking archived)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateArchivedLeaderboardRankingDataV1Handler.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingAdminV1)
def delete_user_ranking_admin_v1(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking (deleteUserRankingAdminV1)

    Delete user ranking

    Remove entry with provided userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: DELETE

        tags: ["LeaderboardData"]

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
    request = DeleteUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingAdminV1)
async def delete_user_ranking_admin_v1_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking (deleteUserRankingAdminV1)

    Delete user ranking

    Remove entry with provided userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: DELETE

        tags: ["LeaderboardData"]

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
    request = DeleteUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingByLeaderboardCodeAdminV1)
def delete_user_ranking_by_leaderboard_code_admin_v1(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete all user ranking by leaderboard code (deleteUserRankingByLeaderboardCodeAdminV1)

    This endpoint will delete user ranking by leaderboard code




    Warning : This will permanently delete your data. Make sure to back up anything important before continuing.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset

        method: DELETE

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 71241: forbidden environment)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingByLeaderboardCodeAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingByLeaderboardCodeAdminV1)
async def delete_user_ranking_by_leaderboard_code_admin_v1_async(
    leaderboard_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete all user ranking by leaderboard code (deleteUserRankingByLeaderboardCodeAdminV1)

    This endpoint will delete user ranking by leaderboard code




    Warning : This will permanently delete your data. Make sure to back up anything important before continuing.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset

        method: DELETE

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Leaderboard deleted)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 71241: forbidden environment)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserRankingByLeaderboardCodeAdminV1.create(
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingPublicV1)
def delete_user_ranking_public_v1(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking (deleteUserRankingPublicV1)

    Delete user ranking

    Remove entry with provided userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: DELETE

        tags: ["LeaderboardData"]

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
    request = DeleteUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingPublicV1)
async def delete_user_ranking_public_v1_async(
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking (deleteUserRankingPublicV1)

    Delete user ranking

    Remove entry with provided userId from leaderboard.
    If leaderboard with given leaderboard code not found, it will return http status not found (404).
    If the leaderboard is found and no entry found in it, it will still return success (204)

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: DELETE

        tags: ["LeaderboardData"]

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
    request = DeleteUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteUserRankingsAdminV1)
def delete_user_rankings_admin_v1(
    leaderboard_code: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking across leaderboard(s) (deleteUserRankingsAdminV1)

    Delete user ranking across leaderboard

    Remove entry with provided userId from leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}

        method: DELETE

        tags: ["LeaderboardData"]

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
    request = DeleteUserRankingsAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserRankingsAdminV1)
async def delete_user_rankings_admin_v1_async(
    leaderboard_code: List[str],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user ranking across leaderboard(s) (deleteUserRankingsAdminV1)

    Delete user ranking across leaderboard

    Remove entry with provided userId from leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}

        method: DELETE

        tags: ["LeaderboardData"]

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
    request = DeleteUserRankingsAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingAdminV1)
def get_all_time_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingAdminV1)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingAdminV1)
async def get_all_time_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingAdminV1)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingPublicV1)
def get_all_time_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingPublicV1)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingPublicV1)
async def get_all_time_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingPublicV1)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (All time leaderboard ranking data retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllTimeLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAllTimeLeaderboardRankingPublicV2)
def get_all_time_leaderboard_ranking_public_v2(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingPublicV2)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - V2GetPublicLeaderboardRankingResponse (All time leaderboard ranking retrieved)

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
    request = GetAllTimeLeaderboardRankingPublicV2.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAllTimeLeaderboardRankingPublicV2)
async def get_all_time_leaderboard_ranking_public_v2_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all time leaderboard ranking data (GetAllTimeLeaderboardRankingPublicV2)

    Get rankings in an all time leaderboard.

    Properties:
        url: /leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - V2GetPublicLeaderboardRankingResponse (All time leaderboard ranking retrieved)

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
    request = GetAllTimeLeaderboardRankingPublicV2.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetArchivedLeaderboardRankingDataV1Handler)
def get_archived_leaderboard_ranking_data_v1_handler(
    leaderboard_code: str,
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get signed url for archive all time leaderboard ranking data (GetArchivedLeaderboardRankingDataV1Handler)

    Get signed url in an all time leaderboard that archived. NOTE: This will be a bulk endpoint to get sign url

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        slug: (slug) OPTIONAL str in query

        leaderboard_codes: (leaderboardCodes) REQUIRED str in query

    Responses:
        200: OK - List[ModelsArchiveLeaderboardSignedURLResponse] (Archived leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71239: leaderboard is not archived)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_code=leaderboard_code,
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetArchivedLeaderboardRankingDataV1Handler)
async def get_archived_leaderboard_ranking_data_v1_handler_async(
    leaderboard_code: str,
    leaderboard_codes: str,
    slug: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get signed url for archive all time leaderboard ranking data (GetArchivedLeaderboardRankingDataV1Handler)

    Get signed url in an all time leaderboard that archived. NOTE: This will be a bulk endpoint to get sign url

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        slug: (slug) OPTIONAL str in query

        leaderboard_codes: (leaderboardCodes) REQUIRED str in query

    Responses:
        200: OK - List[ModelsArchiveLeaderboardSignedURLResponse] (Archived leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 71239: leaderboard is not archived)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetArchivedLeaderboardRankingDataV1Handler.create(
        leaderboard_code=leaderboard_code,
        leaderboard_codes=leaderboard_codes,
        slug=slug,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentMonthLeaderboardRankingAdminV1)
def get_current_month_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current month leaderboard ranking data (GetCurrentMonthLeaderboardRankingAdminV1)

    Get rankings in current month leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/month

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current month leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentMonthLeaderboardRankingAdminV1)
async def get_current_month_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current month leaderboard ranking data (GetCurrentMonthLeaderboardRankingAdminV1)

    Get rankings in current month leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/month

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current month leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentMonthLeaderboardRankingPublicV1)
def get_current_month_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current month leaderboard ranking data (GetCurrentMonthLeaderboardRankingPublicV1)

    Get rankings in current month leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current month leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentMonthLeaderboardRankingPublicV1)
async def get_current_month_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current month leaderboard ranking data (GetCurrentMonthLeaderboardRankingPublicV1)

    Get rankings in current month leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current month leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentMonthLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentSeasonLeaderboardRankingAdminV1)
def get_current_season_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current season leaderboard ranking data (GetCurrentSeasonLeaderboardRankingAdminV1)

    Get rankings in current season leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current season leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentSeasonLeaderboardRankingAdminV1)
async def get_current_season_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current season leaderboard ranking data (GetCurrentSeasonLeaderboardRankingAdminV1)

    Get rankings in current season leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current season leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentSeasonLeaderboardRankingPublicV1)
def get_current_season_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current season leaderboard ranking data (GetCurrentSeasonLeaderboardRankingPublicV1)

    Get rankings in current season leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/season

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current season leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentSeasonLeaderboardRankingPublicV1)
async def get_current_season_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current season leaderboard ranking data (GetCurrentSeasonLeaderboardRankingPublicV1)

    Get rankings in current season leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/season

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current season leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentSeasonLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentWeekLeaderboardRankingAdminV1)
def get_current_week_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current week leaderboard ranking data (GetCurrentWeekLeaderboardRankingAdminV1)

    Get rankings in current week leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/week

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current week leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentWeekLeaderboardRankingAdminV1)
async def get_current_week_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current week leaderboard ranking data (GetCurrentWeekLeaderboardRankingAdminV1)

    Get rankings in current week leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/week

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current week leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentWeekLeaderboardRankingPublicV1)
def get_current_week_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current week leaderboard ranking data (GetCurrentWeekLeaderboardRankingPublicV1)

    Get rankings in current week leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current week leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentWeekLeaderboardRankingPublicV1)
async def get_current_week_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current week leaderboard ranking data (GetCurrentWeekLeaderboardRankingPublicV1)

    Get rankings in current week leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Current week leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentWeekLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTodayLeaderboardRankingAdminV1)
def get_today_leaderboard_ranking_admin_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get today leaderboard ranking data (GetTodayLeaderboardRankingAdminV1)

    Get rankings in today leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/today

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Today leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTodayLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTodayLeaderboardRankingAdminV1)
async def get_today_leaderboard_ranking_admin_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get today leaderboard ranking data (GetTodayLeaderboardRankingAdminV1)

    Get rankings in today leaderboard.

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/today

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Today leaderboard ranking retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTodayLeaderboardRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTodayLeaderboardRankingPublicV1)
def get_today_leaderboard_ranking_public_v1(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get today leaderboard ranking data (GetTodayLeaderboardRankingPublicV1)

    Get rankings in today leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/today

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Today leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTodayLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTodayLeaderboardRankingPublicV1)
async def get_today_leaderboard_ranking_public_v1_async(
    leaderboard_code: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get today leaderboard ranking data (GetTodayLeaderboardRankingPublicV1)

    Get rankings in today leaderboard.

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/today

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetLeaderboardRankingResp (Today leaderboard retrieved)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71235: leaderboard ranking not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error | 71236: leaderboard ranking count failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTodayLeaderboardRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        limit=limit,
        offset=offset,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserRankingAdminV1)
def get_user_ranking_admin_v1(
    leaderboard_code: str,
    user_id: str,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingAdminV1)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserRankingResponse (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71237: leaderboard ranking not created for inactive leaderboard | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserRankingAdminV1)
async def get_user_ranking_admin_v1_async(
    leaderboard_code: str,
    user_id: str,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingAdminV1)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserRankingResponse (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71237: leaderboard ranking not created for inactive leaderboard | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingAdminV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserRankingPublicV1)
def get_user_ranking_public_v1(
    leaderboard_code: str,
    user_id: str,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingPublicV1)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserRankingResponse (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71237: leaderboard ranking not created for inactive leaderboard | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        previous_version=previous_version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserRankingPublicV1)
async def get_user_ranking_public_v1_async(
    leaderboard_code: str,
    user_id: str,
    previous_version: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user ranking (getUserRankingPublicV1)

    Get user ranking in leaderboard

    Properties:
        url: /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: GET

        tags: ["LeaderboardData"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        previous_version: (previousVersion) OPTIONAL int in query

    Responses:
        200: OK - ModelsUserRankingResponse (User ranking retrieved)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71230: leaderboard configuration not found | 71237: leaderboard ranking not created for inactive leaderboard | 71233: user ranking data not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserRankingPublicV1.create(
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        previous_version=previous_version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserPointAdminV1)
def update_user_point_admin_v1(
    body: ModelsUpdateUserPointAdminV1Request,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user point (updateUserPointAdminV1)

    Update user point in a leaderboard. This endpoint uses for test utility only.




    Other detail info:






      * Returns: user ranking

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: PUT

        tags: ["LeaderboardData"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateUserPointAdminV1Request in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateUserPointAdminV1Response (User point updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserPointAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserPointAdminV1)
async def update_user_point_admin_v1_async(
    body: ModelsUpdateUserPointAdminV1Request,
    leaderboard_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update user point (updateUserPointAdminV1)

    Update user point in a leaderboard. This endpoint uses for test utility only.




    Other detail info:






      * Returns: user ranking

    Properties:
        url: /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}

        method: PUT

        tags: ["LeaderboardData"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateUserPointAdminV1Request in body

        leaderboard_code: (leaderboardCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUpdateUserPointAdminV1Response (User point updated)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (71130: leaderboard config not found)

        500: Internal Server Error - ResponseErrorResponse (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserPointAdminV1.create(
        body=body,
        leaderboard_code=leaderboard_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
