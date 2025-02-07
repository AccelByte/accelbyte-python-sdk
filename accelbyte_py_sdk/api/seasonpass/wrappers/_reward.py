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

from ..models import ClaimableRewards
from ..models import ErrorEntity
from ..models import RewardCreate
from ..models import RewardInfo
from ..models import RewardUpdate
from ..models import UserRewardClaim
from ..models import ValidationErrorEntity

from ..operations.reward import CreateReward
from ..operations.reward import DeleteReward
from ..operations.reward import GetReward
from ..operations.reward import PublicBulkClaimUserRewards
from ..operations.reward import PublicClaimUserReward
from ..operations.reward import QueryRewards
from ..operations.reward import UpdateReward
from ..models import RewardCreateTypeEnum
from ..models import RewardInfoItemTypeEnum, RewardInfoTypeEnum
from ..models import RewardUpdateTypeEnum


@same_doc_as(CreateReward)
def create_reward(
    season_id: str,
    body: Optional[RewardCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a reward (createReward)

    This API is used to create a reward for a draft season.

    Other detail info:

      * Returns : created reward

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards

        method: POST

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL RewardCreate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        201: Created - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49143: Item type not match)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49173: Reward [{code}] already exists in the season)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateReward.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateReward)
async def create_reward_async(
    season_id: str,
    body: Optional[RewardCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a reward (createReward)

    This API is used to create a reward for a draft season.

    Other detail info:

      * Returns : created reward

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards

        method: POST

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL RewardCreate in body

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        201: Created - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49143: Item type not match)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}] | 49173: Reward [{code}] already exists in the season)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateReward.create(
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteReward)
def delete_reward(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a reward (deleteReward)

    This API is used to delete a reward permanently, only draft season reward can be deleted.

    Other detail info:

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}

        method: DELETE

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete reward successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49144: Reward [{code}] does not exist | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Season is not updatable in status [{status}] | 49179: Reward [{code}] is in use)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteReward.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteReward)
async def delete_reward_async(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a reward (deleteReward)

    This API is used to delete a reward permanently, only draft season reward can be deleted.

    Other detail info:

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}

        method: DELETE

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        204: No Content - (Delete reward successfully)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49144: Reward [{code}] does not exist | 49143: Season [{seasonId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Season is not updatable in status [{status}] | 49179: Reward [{code}] is in use)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteReward.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetReward)
def get_reward(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a reward (getReward)

    This API is used to get a reward for a season.

    Other detail info:

      * Returns : reward data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetReward.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetReward)
async def get_reward_async(
    code: str,
    season_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a reward (getReward)

    This API is used to get a reward for a season.

    Other detail info:

      * Returns : reward data

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 49144: Reward [{code}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetReward.create(
        code=code,
        season_id=season_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBulkClaimUserRewards)
def public_bulk_claim_user_rewards(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk claim all remained rewards (publicBulkClaimUserRewards)

    This API is used to bulk claim all remained rewards, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk

        method: POST

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableRewards (successful operation)

        400: Bad Request - ErrorEntity (49124: Manual claim not supported | 20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist | 49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkClaimUserRewards.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBulkClaimUserRewards)
async def public_bulk_claim_user_rewards_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk claim all remained rewards (publicBulkClaimUserRewards)

    This API is used to bulk claim all remained rewards, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk

        method: POST

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableRewards (successful operation)

        400: Bad Request - ErrorEntity (49124: Manual claim not supported | 20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49148: User season does not exist | 49147: Published season does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBulkClaimUserRewards.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicClaimUserReward)
def public_claim_user_reward(
    user_id: str,
    body: Optional[UserRewardClaim] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim tier reward (publicClaimUserReward)

    This API is used to claim reward, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards

        method: POST

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserRewardClaim in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableRewards (successful operation)

        400: Bad Request - ErrorEntity (49124: Manual claim not supported | 20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49144: Reward [{code}] does not exist | 49148: User season does not exist | 49147: Published season does not exist)

        409: Conflict - ErrorEntity (49182: Reward is already claimed | 49188: Reward is claiming)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicClaimUserReward.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicClaimUserReward)
async def public_claim_user_reward_async(
    user_id: str,
    body: Optional[UserRewardClaim] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim tier reward (publicClaimUserReward)

    This API is used to claim reward, season only located in non-publisher namespace.

    Other detail info:

      * Returns : user season data

    Properties:
        url: /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards

        method: POST

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL UserRewardClaim in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ClaimableRewards (successful operation)

        400: Bad Request - ErrorEntity (49124: Manual claim not supported | 20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49144: Reward [{code}] does not exist | 49148: User season does not exist | 49147: Published season does not exist)

        409: Conflict - ErrorEntity (49182: Reward is already claimed | 49188: Reward is claiming)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicClaimUserReward.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryRewards)
def query_rewards(
    season_id: str,
    q: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query all rewards for a season (queryRewards)

    This API is used to query rewards for a season.

    Other detail info:

      * Returns : the list of rewards

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        q: (q) OPTIONAL str in query

    Responses:
        200: OK - List[RewardInfo] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryRewards.create(
        season_id=season_id,
        q=q,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryRewards)
async def query_rewards_async(
    season_id: str,
    q: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query all rewards for a season (queryRewards)

    This API is used to query rewards for a season.

    Other detail info:

      * Returns : the list of rewards

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards

        method: GET

        tags: ["Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

        q: (q) OPTIONAL str in query

    Responses:
        200: OK - List[RewardInfo] (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed)

        404: Not Found - ErrorEntity (49143: Season [{seasonId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryRewards.create(
        season_id=season_id,
        q=q,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateReward)
def update_reward(
    code: str,
    season_id: str,
    body: Optional[RewardUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a reward (updateReward)

    This API is used to update a reward. Only draft season reward can be updated.

    Other detail info:

      * Returns : updated reward

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}

        method: PATCH

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL RewardUpdate in body

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49143: Item type not match)

        404: Not Found - ErrorEntity (49144: Reward [{code}] does not exist | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReward.create(
        code=code,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateReward)
async def update_reward_async(
    code: str,
    season_id: str,
    body: Optional[RewardUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a reward (updateReward)

    This API is used to update a reward. Only draft season reward can be updated.

    Other detail info:

      * Returns : updated reward

    Properties:
        url: /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}

        method: PATCH

        tags: ["Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL RewardUpdate in body

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        season_id: (seasonId) REQUIRED str in path

    Responses:
        200: OK - RewardInfo (successful operation)

        400: Bad Request - ErrorEntity (20026: publisher namespace not allowed | 49143: Item type not match)

        404: Not Found - ErrorEntity (49144: Reward [{code}] does not exist | 30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 49143: Season [{seasonId}] does not exist in namespace [{namespace}] | 36141: Currency [{currencyCode}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (49171: Invalid season status [{status}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateReward.create(
        code=code,
        season_id=season_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
