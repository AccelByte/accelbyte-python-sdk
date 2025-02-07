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

from ..models import ErrorEntity
from ..models import Tier
from ..models import TierCreate
from ..models import TierInput
from ..models import TierPagingSlicedResult
from ..models import TierReorder
from ..models import UserExpGrant
from ..models import UserSeasonSummary
from ..models import UserTierGrant
from ..models import ValidationErrorEntity

from ..operations.tier import CreateTier
from ..operations.tier import DeleteTier
from ..operations.tier import GrantUserExp
from ..operations.tier import GrantUserTier
from ..operations.tier import QueryTiers
from ..operations.tier import ReorderTier
from ..operations.tier import UpdateTier
from ..models import UserExpGrantSourceEnum
from ..models import UserTierGrantSourceEnum


@same_doc_as(CreateTier)
def create_tier(
    season_id: str,
    body: Optional[TierCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create tier (createTier)

    This API is used to create tier for a draft season, can create multiple tiers at same time.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers

        method: POST

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL TierCreate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        201: Created - List[Tier] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist | 49145: Pass [{code}] does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateTier.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateTier)
async def create_tier_async(
    season_id: str,
    body: Optional[TierCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create tier (createTier)

    This API is used to create tier for a draft season, can create multiple tiers at same time.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers

        method: POST

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL TierCreate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        201: Created - List[Tier] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist | 49145: Pass [{code}] does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateTier.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteTier)
def delete_tier(
    id_: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a tier (deleteTier)

    This API is used to delete a tier permanently, only draft season pass can be deleted.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}

        method: DELETE

        tags: ["Tier"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete tier successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTier.create(
        id_=id_,
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTier)
async def delete_tier_async(
    id_: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a tier (deleteTier)

    This API is used to delete a tier permanently, only draft season pass can be deleted.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}

        method: DELETE

        tags: ["Tier"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete tier successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTier.create(
        id_=id_,
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GrantUserExp)
def grant_user_exp(
    user_id: str,
    body: Optional[UserExpGrant] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant exp to user (grantUserExp)

    This API is used to grant exp to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp

        method: POST

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserExpGrant in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantUserExp.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GrantUserExp)
async def grant_user_exp_async(
    user_id: str,
    body: Optional[UserExpGrant] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant exp to user (grantUserExp)

    This API is used to grant exp to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp

        method: POST

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserExpGrant in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantUserExp.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GrantUserTier)
def grant_user_tier(
    user_id: str,
    body: Optional[UserTierGrant] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant tier to user (grantUserTier)

    This API is used to grant tier to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers

        method: POST

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserTierGrant in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantUserTier.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GrantUserTier)
async def grant_user_tier_async(
    user_id: str,
    body: Optional[UserTierGrant] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Grant tier to user (grantUserTier)

    This API is used to grant tier to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers

        method: POST

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserTierGrant in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - UserSeasonSummary (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GrantUserTier.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTiers)
def query_tiers(
    season_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query paginated tiers for a season (queryTiers)

    This API is used to query paginated tiers for a season.

    Other detail info:

      * Returns : the list of passes

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers

        method: GET

        tags: ["Tier"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - TierPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryTiers.create(
        season_id=season_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTiers)
async def query_tiers_async(
    season_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query paginated tiers for a season (queryTiers)

    This API is used to query paginated tiers for a season.

    Other detail info:

      * Returns : the list of passes

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers

        method: GET

        tags: ["Tier"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - TierPagingSlicedResult (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryTiers.create(
        season_id=season_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ReorderTier)
def reorder_tier(
    id_: str,
    season_id: str,
    body: Optional[TierReorder] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reorder a tier (reorderTier)

    This API is used to reorder a tier. Only draft season pass can be updated.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder

        method: PUT

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL TierReorder in body

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - Tier (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49146: Tier does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ReorderTier.create(
        id_=id_,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ReorderTier)
async def reorder_tier_async(
    id_: str,
    season_id: str,
    body: Optional[TierReorder] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reorder a tier (reorderTier)

    This API is used to reorder a tier. Only draft season pass can be updated.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder

        method: PUT

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL TierReorder in body

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - Tier (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49146: Tier does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ReorderTier.create(
        id_=id_,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateTier)
def update_tier(
    id_: str,
    season_id: str,
    body: Optional[TierInput] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a tier (updateTier)

    This API is used to update a tier. Only draft season pass can be updated.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}

        method: PUT

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL TierInput in body

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - Tier (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist | 49145: Pass [{code}] does not exist | 49146: Tier does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTier.create(
        id_=id_,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateTier)
async def update_tier_async(
    id_: str,
    season_id: str,
    body: Optional[TierInput] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a tier (updateTier)

    This API is used to update a tier. Only draft season pass can be updated.

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}

        method: PUT

        tags: ["Tier"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL TierInput in body

        id_: (id) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - Tier (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist | 49145: Pass [{code}] does not exist | 49146: Tier does not exist)

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTier.create(
        id_=id_,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
