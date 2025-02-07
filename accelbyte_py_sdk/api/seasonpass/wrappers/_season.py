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

from ..models import BulkUserProgressionRequest
from ..models import ClaimableUserSeasonInfo
from ..models import ErrorEntity
from ..models import ExpGrantHistoryPagingSlicedResult
from ..models import FullSeasonInfo
from ..models import ListSeasonInfoPagingSlicedResult
from ..models import ListUserSeasonInfoPagingSlicedResult
from ..models import LocalizedSeasonInfo
from ..models import Ownership
from ..models import ReasonTagsResult
from ..models import SeasonCloneRequest
from ..models import SeasonCreate
from ..models import SeasonInfo
from ..models import SeasonSummary
from ..models import SeasonUpdate
from ..models import UserPurchasable
from ..models import UserSeasonSummary
from ..models import ValidationErrorEntity

from ..operations.season import BulkGetUserSeasonProgression
from ..operations.season import CheckSeasonPurchasable
from ..operations.season import CloneSeason
from ..operations.season import CreateSeason
from ..operations.season import DeleteSeason
from ..operations.season import ExistsAnyPassByPassCodes
from ..operations.season import GetCurrentSeason
from ..operations.season import GetCurrentUserSeasonProgression
from ..operations.season import GetFullSeason
from ..operations.season import GetSeason
from ..operations.season import GetUserParticipatedSeasons
from ..operations.season import GetUserSeason
from ..operations.season import PublicGetCurrentSeason
from ..operations.season import PublicGetCurrentUserSeason
from ..operations.season import PublicGetUserSeason
from ..operations.season import PublishSeason
from ..operations.season import QuerySeasons
from ..operations.season import QuerySeasonsStatusEnum
from ..operations.season import QueryUserExpGrantHistory
from ..operations.season import QueryUserExpGrantHistorySourceEnum
from ..operations.season import QueryUserExpGrantHistoryTag
from ..operations.season import ResetUserSeason
from ..operations.season import RetireSeason
from ..operations.season import UnpublishSeason
from ..operations.season import UpdateSeason
from ..models import LocalizedSeasonInfoStatusEnum
from ..models import SeasonInfoStatusEnum
from ..models import SeasonSummaryStatusEnum


@same_doc_as(BulkGetUserSeasonProgression)
def bulk_get_user_season_progression(
    body: Optional[BulkUserProgressionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get user current season progression (bulkGetUserSeasonProgression)

    This API is used to bulk get user current season progression, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season progression

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL BulkUserProgressionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserSeasonSummary] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetUserSeasonProgression.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkGetUserSeasonProgression)
async def bulk_get_user_season_progression_async(
    body: Optional[BulkUserProgressionRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get user current season progression (bulkGetUserSeasonProgression)

    This API is used to bulk get user current season progression, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season progression

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL BulkUserProgressionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[UserSeasonSummary] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetUserSeasonProgression.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CheckSeasonPurchasable)
def check_season_purchasable(
    user_id: str,
    body: Optional[UserPurchasable] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check pass or tier purchasable (checkSeasonPurchasable)

    This API is used to check pass or tier purchasable, season only located in non-publisher namespace.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserPurchasable in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)

        409: Conflict - ErrorEntity (49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckSeasonPurchasable.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CheckSeasonPurchasable)
async def check_season_purchasable_async(
    user_id: str,
    body: Optional[UserPurchasable] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check pass or tier purchasable (checkSeasonPurchasable)

    This API is used to check pass or tier purchasable, season only located in non-publisher namespace.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserPurchasable in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)

        409: Conflict - ErrorEntity (49183: Pass item does not match published season pass | 49184: Tier item does not match published season tier | 49185: Season has not started | 49186: Pass already owned | 49187: Exceed max tier count)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckSeasonPurchasable.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CloneSeason)
def clone_season(
    season_id: str,
    body: Optional[SeasonCloneRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Clone a season (cloneSeason)

    This API is used to clone a season.

    Other detail info:

      * Returns : cloned season info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SeasonCloneRequest in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49122: Invalid time range)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CloneSeason.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CloneSeason)
async def clone_season_async(
    season_id: str,
    body: Optional[SeasonCloneRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Clone a season (cloneSeason)

    This API is used to clone a season.

    Other detail info:

      * Returns : cloned season info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SeasonCloneRequest in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49122: Invalid time range)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CloneSeason.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateSeason)
def create_season(
    body: Optional[SeasonCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a season (createSeason)

    This API is used to create a season, season only allowed in non-publisher namespace.

    Other detail info:

      * Returns : created season

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SeasonCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations | 49122: Invalid time range)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49141: Tier item does not exist in the store of namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSeason.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateSeason)
async def create_season_async(
    body: Optional[SeasonCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a season (createSeason)

    This API is used to create a season, season only allowed in non-publisher namespace.

    Other detail info:

      * Returns : created season

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons

        method: POST

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SeasonCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations | 49122: Invalid time range)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49141: Tier item does not exist in the store of namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSeason.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSeason)
def delete_season(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a season (deleteSeason)

    This API is used to delete a season permanently, only draft season can be deleted.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}

        method: DELETE

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete season successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSeason)
async def delete_season_async(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a season (deleteSeason)

    This API is used to delete a season permanently, only draft season can be deleted.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}

        method: DELETE

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete season successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ExistsAnyPassByPassCodes)
def exists_any_pass_by_pass_codes(
    user_id: str,
    pass_codes: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get ownership for any pass codes (existsAnyPassByPassCodes)

    [SERVICE COMMUNICATION ONLY]This API is used to get ownership for any pass codes, season only located in non-publisher namespace.

    Other detail info:

      * Returns : ownership

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        pass_codes: (passCodes) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExistsAnyPassByPassCodes.create(
        user_id=user_id,
        pass_codes=pass_codes,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ExistsAnyPassByPassCodes)
async def exists_any_pass_by_pass_codes_async(
    user_id: str,
    pass_codes: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get ownership for any pass codes (existsAnyPassByPassCodes)

    [SERVICE COMMUNICATION ONLY]This API is used to get ownership for any pass codes, season only located in non-publisher namespace.

    Other detail info:

      * Returns : ownership

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        pass_codes: (passCodes) OPTIONAL List[str] in query

    Responses:
        200: OK - Ownership (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExistsAnyPassByPassCodes.create(
        user_id=user_id,
        pass_codes=pass_codes,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentSeason)
def get_current_season(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current published season summary (getCurrentSeason)

    [SERVICE COMMUNICATION ONLY]This API is used to get current published season summary which includes previous published season summary if exists, season only located in non-publisher namespace.

    Other detail info:

      * Returns : season summary data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/current

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentSeason.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentSeason)
async def get_current_season_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current published season summary (getCurrentSeason)

    [SERVICE COMMUNICATION ONLY]This API is used to get current published season summary which includes previous published season summary if exists, season only located in non-publisher namespace.

    Other detail info:

      * Returns : season summary data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/current

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentSeason.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCurrentUserSeasonProgression)
def get_current_user_season_progression(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current user season progression (getCurrentUserSeasonProgression)

    This API is used to get current user season progression, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season progression

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist | 49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentUserSeasonProgression.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCurrentUserSeasonProgression)
async def get_current_user_season_progression_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current user season progression (getCurrentUserSeasonProgression)

    This API is used to get current user season progression, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season progression

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist | 49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCurrentUserSeasonProgression.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetFullSeason)
def get_full_season(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a season full content (getFullSeason)

    This API is used to get a season full content, season only located in non-publisher namespace.

    Other detail info:

      * Returns : season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - FullSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetFullSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetFullSeason)
async def get_full_season_async(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a season full content (getFullSeason)

    This API is used to get a season full content, season only located in non-publisher namespace.

    Other detail info:

      * Returns : season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - FullSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetFullSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSeason)
def get_season(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a season (getSeason)

    This API is used to get a season, season only located in non-publisher namespace.

    Other detail info:

      * Returns : season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSeason)
async def get_season_async(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a season (getSeason)

    This API is used to get a season, season only located in non-publisher namespace.

    Other detail info:

      * Returns : season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserParticipatedSeasons)
def get_user_participated_seasons(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user participated season data (getUserParticipatedSeasons)

    This API is used to get user participated season data, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user participated season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ListUserSeasonInfoPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserParticipatedSeasons.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserParticipatedSeasons)
async def get_user_participated_seasons_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user participated season data (getUserParticipatedSeasons)

    This API is used to get user participated season data, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user participated season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ListUserSeasonInfoPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserParticipatedSeasons.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserSeason)
def get_user_season(
    season_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user season data (getUserSeason)

    This API is used to get user season data, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableUserSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSeason.create(
        season_id=season_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserSeason)
async def get_user_season_async(
    season_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user season data (getUserSeason)

    This API is used to get user season data, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableUserSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserSeason.create(
        season_id=season_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetCurrentSeason)
def public_get_current_season(
    language: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current published season (publicGetCurrentSeason)

    This API is used to get current published season, season only located in non-publisher namespace.

    Other detail info:

      * Returns : localized season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/seasons/current

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

    Responses:
        200: OK - LocalizedSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCurrentSeason.create(
        language=language,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetCurrentSeason)
async def public_get_current_season_async(
    language: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current published season (publicGetCurrentSeason)

    This API is used to get current published season, season only located in non-publisher namespace.

    Other detail info:

      * Returns : localized season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/seasons/current

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        language: (language) OPTIONAL str in query

    Responses:
        200: OK - LocalizedSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCurrentSeason.create(
        language=language,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetCurrentUserSeason)
def public_get_current_user_season(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current user season data (publicGetCurrentUserSeason)

    This API is used to get current user season data, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableUserSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist | 49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCurrentUserSeason.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetCurrentUserSeason)
async def public_get_current_user_season_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get current user season data (publicGetCurrentUserSeason)

    This API is used to get current user season data, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableUserSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist | 49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCurrentUserSeason.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserSeason)
def public_get_user_season(
    season_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user season data (publicGetUserSeason)

    This API is used to get user season data, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableUserSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserSeason.create(
        season_id=season_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserSeason)
async def public_get_user_season_async(
    season_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user season data (publicGetUserSeason)

    This API is used to get user season data, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableUserSeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserSeason.create(
        season_id=season_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublishSeason)
def publish_season(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Publish a season (publishSeason)

    This API is used to publish a draft season, only one published season allowed at same time in a namespace.

    Other detail info:

      * Returns : published season

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish

        method: PUT

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 49141: Tier item does not exist in the store of namespace [{namespace}] | 49142: Pass item does not exist in the store of namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49172: Season is already ended | 49175: Published season already exists in namespace [{namespace}] | 49176: Rewards are not provided | 49177: Passes are not provided | 49178: Tiers are not provided | 49189: Duplicate season name [{name}] for publishing in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublishSeason)
async def publish_season_async(
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Publish a season (publishSeason)

    This API is used to publish a draft season, only one published season allowed at same time in a namespace.

    Other detail info:

      * Returns : published season

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish

        method: PUT

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}] | 49141: Tier item does not exist in the store of namespace [{namespace}] | 49142: Pass item does not exist in the store of namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49172: Season is already ended | 49175: Published season already exists in namespace [{namespace}] | 49176: Rewards are not provided | 49177: Passes are not provided | 49178: Tiers are not provided | 49189: Duplicate season name [{name}] for publishing in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublishSeason.create(
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QuerySeasons)
def query_seasons(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[List[Union[str, QuerySeasonsStatusEnum]]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query seasons (querySeasons)

    This API is used to query seasons, seasons only located in non-publisher namespace.

    Other detail info:

      * Returns : the list of season basic info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL List[Union[str, StatusEnum]] in query

    Responses:
        200: OK - ListSeasonInfoPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySeasons.create(
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QuerySeasons)
async def query_seasons_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[List[Union[str, QuerySeasonsStatusEnum]]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query seasons (querySeasons)

    This API is used to query seasons, seasons only located in non-publisher namespace.

    Other detail info:

      * Returns : the list of season basic info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL List[Union[str, StatusEnum]] in query

    Responses:
        200: OK - ListSeasonInfoPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySeasons.create(
        limit=limit,
        offset=offset,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserExpGrantHistory)
def query_user_exp_grant_history(
    user_id: str,
    from_: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    season_id: Optional[str] = None,
    source: Optional[Union[str, QueryUserExpGrantHistorySourceEnum]] = None,
    tags: Optional[List[str]] = None,
    to: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user season exp acquisition history (queryUserExpGrantHistory)

    This API is used to get user exp acquisition history, season only located in non-publisher namespace.

    Other detail info:

      * default will query from current active season
      *  Returns : paginated grant history

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        from_: (from) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        season_id: (seasonId) OPTIONAL str in query

        source: (source) OPTIONAL Union[str, SourceEnum] in query

        tags: (tags) OPTIONAL List[str] in query

        to: (to) OPTIONAL str in query

    Responses:
        200: OK - ExpGrantHistoryPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserExpGrantHistory.create(
        user_id=user_id,
        from_=from_,
        limit=limit,
        offset=offset,
        season_id=season_id,
        source=source,
        tags=tags,
        to=to,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserExpGrantHistory)
async def query_user_exp_grant_history_async(
    user_id: str,
    from_: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    season_id: Optional[str] = None,
    source: Optional[Union[str, QueryUserExpGrantHistorySourceEnum]] = None,
    tags: Optional[List[str]] = None,
    to: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user season exp acquisition history (queryUserExpGrantHistory)

    This API is used to get user exp acquisition history, season only located in non-publisher namespace.

    Other detail info:

      * default will query from current active season
      *  Returns : paginated grant history

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        from_: (from) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        season_id: (seasonId) OPTIONAL str in query

        source: (source) OPTIONAL Union[str, SourceEnum] in query

        tags: (tags) OPTIONAL List[str] in query

        to: (to) OPTIONAL str in query

    Responses:
        200: OK - ExpGrantHistoryPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserExpGrantHistory.create(
        user_id=user_id,
        from_=from_,
        limit=limit,
        offset=offset,
        season_id=season_id,
        source=source,
        tags=tags,
        to=to,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserExpGrantHistoryTag)
def query_user_exp_grant_history_tag(
    user_id: str,
    season_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user season exp acquisition history's reason tag list (queryUserExpGrantHistoryTag)

    This API is used to get user exp acquisition history's tag list.

    Other detail info:

      * default will query from current active season
      *  Returns : exp grant history tags list

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        season_id: (seasonId) OPTIONAL str in query

    Responses:
        200: OK - ReasonTagsResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserExpGrantHistoryTag.create(
        user_id=user_id,
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserExpGrantHistoryTag)
async def query_user_exp_grant_history_tag_async(
    user_id: str,
    season_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user season exp acquisition history's reason tag list (queryUserExpGrantHistoryTag)

    This API is used to get user exp acquisition history's tag list.

    Other detail info:

      * default will query from current active season
      *  Returns : exp grant history tags list

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags

        method: GET

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        season_id: (seasonId) OPTIONAL str in query

    Responses:
        200: OK - ReasonTagsResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserExpGrantHistoryTag.create(
        user_id=user_id,
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ResetUserSeason)
def reset_user_season(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset user data in current season (resetUserSeason)

    [TEST FACILITY ONLY] Forbidden in live environment. This API is used to reset user data in current season, it will not revoke the rewarded entitlements.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset

        method: DELETE

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetUserSeason.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ResetUserSeason)
async def reset_user_season_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset user data in current season (resetUserSeason)

    [TEST FACILITY ONLY] Forbidden in live environment. This API is used to reset user data in current season, it will not revoke the rewarded entitlements.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset

        method: DELETE

        tags: ["Season"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (OK)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ResetUserSeason.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetireSeason)
def retire_season(
    season_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retire a season (retireSeason)

    This API is used to retire a published season, if the season has not ended it will report error except with force.

    Other detail info:

      * Returns : season info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire

        method: PUT

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49181: Season has not ended)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetireSeason.create(
        season_id=season_id,
        force=force,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetireSeason)
async def retire_season_async(
    season_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retire a season (retireSeason)

    This API is used to retire a published season, if the season has not ended it will report error except with force.

    Other detail info:

      * Returns : season info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire

        method: PUT

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49181: Season has not ended)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetireSeason.create(
        season_id=season_id,
        force=force,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UnpublishSeason)
def unpublish_season(
    season_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unpublish a season (unpublishSeason)

    This API is used to unpublish a published season, if the season already started it will report error except with force.

    Other detail info:

      * Returns : season info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish

        method: PUT

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49180: Season is already started)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnpublishSeason.create(
        season_id=season_id,
        force=force,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UnpublishSeason)
async def unpublish_season_async(
    season_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Unpublish a season (unpublishSeason)

    This API is used to unpublish a published season, if the season already started it will report error except with force.

    Other detail info:

      * Returns : season info

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish

        method: PUT

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49180: Season is already started)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UnpublishSeason.create(
        season_id=season_id,
        force=force,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSeason)
def update_season(
    season_id: str,
    body: Optional[SeasonUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a season (updateSeason)

    This API is used to update a season. Only draft season can be updated.

    Other detail info:

      * Returns : updated season

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}

        method: PATCH

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SeasonUpdate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations | 49122: Invalid time range)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49141: Tier item does not exist in the store of namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSeason.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSeason)
async def update_season_async(
    season_id: str,
    body: Optional[SeasonUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a season (updateSeason)

    This API is used to update a season. Only draft season can be updated.

    Other detail info:

      * Returns : updated season

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}

        method: PATCH

        tags: ["Season"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL SeasonUpdate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - SeasonInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49121: Default language [{language}] required in localizations | 49122: Invalid time range)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 49141: Tier item does not exist in the store of namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSeason.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
