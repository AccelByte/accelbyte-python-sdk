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

from ..models import IamErrorResponse
from ..models import ModelClaimUserRewardsByGoalCodeRequest
from ..models import ModelClaimUserRewardsReq
from ..models import ModelClaimUsersRewardsRequest
from ..models import ModelClaimUsersRewardsResponse
from ..models import ModelListUserRewardsResponse
from ..models import ModelUserReward
from ..models import ResponseError

from ..operations.player_reward import AdminClaimUserRewards
from ..operations.player_reward import AdminClaimUserRewardsByGoalCode
from ..operations.player_reward import AdminClaimUsersRewards
from ..operations.player_reward import AdminGetUserRewards
from ..operations.player_reward import (
    AdminGetUserRewardsSortByEnum,
    AdminGetUserRewardsStatusEnum,
)
from ..operations.player_reward import PublicClaimUserRewards
from ..operations.player_reward import PublicClaimUserRewardsByGoalCode
from ..operations.player_reward import PublicGetUserRewards
from ..operations.player_reward import (
    PublicGetUserRewardsSortByEnum,
    PublicGetUserRewardsStatusEnum,
)
from ..models import ModelUserRewardStatusEnum, ModelUserRewardTypeEnum


@same_doc_as(AdminClaimUserRewards)
def admin_claim_user_rewards(
    body: ModelClaimUserRewardsReq,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim rewards of a single user (adminClaimUserRewards)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminClaimUserRewards.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminClaimUserRewards)
async def admin_claim_user_rewards_async(
    body: ModelClaimUserRewardsReq,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim rewards of a single user (adminClaimUserRewards)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsReq in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminClaimUserRewards.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminClaimUserRewardsByGoalCode)
def admin_claim_user_rewards_by_goal_code(
    body: ModelClaimUserRewardsByGoalCodeRequest,
    challenge_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim rewards of a single user by goal code (adminClaimUserRewardsByGoalCode)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsByGoalCodeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminClaimUserRewardsByGoalCode.create(
        body=body,
        challenge_code=challenge_code,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminClaimUserRewardsByGoalCode)
async def admin_claim_user_rewards_by_goal_code_async(
    body: ModelClaimUserRewardsByGoalCodeRequest,
    challenge_code: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim rewards of a single user by goal code (adminClaimUserRewardsByGoalCode)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsByGoalCodeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminClaimUserRewardsByGoalCode.create(
        body=body,
        challenge_code=challenge_code,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminClaimUsersRewards)
def admin_claim_users_rewards(
    body: List[ModelClaimUsersRewardsRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim  rewards of multiple users (adminClaimUsersRewards)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelClaimUsersRewardsRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelClaimUsersRewardsResponse] (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminClaimUsersRewards.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminClaimUsersRewards)
async def admin_claim_users_rewards_async(
    body: List[ModelClaimUsersRewardsRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim  rewards of multiple users (adminClaimUsersRewards)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelClaimUsersRewardsRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelClaimUsersRewardsResponse] (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminClaimUsersRewards.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserRewards)
def admin_get_user_rewards(
    user_id: str,
    challenge_code: Optional[str] = None,
    goal_progression_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminGetUserRewardsSortByEnum]] = None,
    status: Optional[Union[str, AdminGetUserRewardsStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Rewards (adminGetUserRewards)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards

        method: GET

        tags: ["Player Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        challenge_code: (challengeCode) OPTIONAL str in query

        goal_progression_id: (goalProgressionId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - ModelListUserRewardsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserRewards.create(
        user_id=user_id,
        challenge_code=challenge_code,
        goal_progression_id=goal_progression_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserRewards)
async def admin_get_user_rewards_async(
    user_id: str,
    challenge_code: Optional[str] = None,
    goal_progression_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminGetUserRewardsSortByEnum]] = None,
    status: Optional[Union[str, AdminGetUserRewardsStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Rewards (adminGetUserRewards)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards

        method: GET

        tags: ["Player Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        challenge_code: (challengeCode) OPTIONAL str in query

        goal_progression_id: (goalProgressionId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - ModelListUserRewardsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserRewards.create(
        user_id=user_id,
        challenge_code=challenge_code,
        goal_progression_id=goal_progression_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicClaimUserRewards)
def public_claim_user_rewards(
    body: ModelClaimUserRewardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim User's Rewards (publicClaimUserRewards)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicClaimUserRewards.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicClaimUserRewards)
async def public_claim_user_rewards_async(
    body: ModelClaimUserRewardsReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim User's Rewards (publicClaimUserRewards)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicClaimUserRewards.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicClaimUserRewardsByGoalCode)
def public_claim_user_rewards_by_goal_code(
    body: ModelClaimUserRewardsByGoalCodeRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim User's Rewards by Goal Code (publicClaimUserRewardsByGoalCode)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsByGoalCodeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicClaimUserRewardsByGoalCode.create(
        body=body,
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicClaimUserRewardsByGoalCode)
async def public_claim_user_rewards_by_goal_code_async(
    body: ModelClaimUserRewardsByGoalCodeRequest,
    challenge_code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim User's Rewards by Goal Code (publicClaimUserRewardsByGoalCode)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim

        method: POST

        tags: ["Player Reward"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelClaimUserRewardsByGoalCodeRequest in body

        challenge_code: (challengeCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelUserReward] (OK)

        400: Bad Request - IamErrorResponse (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        422: Unprocessable Entity - IamErrorResponse (99004: unprocessable entity: {{message}})

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicClaimUserRewardsByGoalCode.create(
        body=body,
        challenge_code=challenge_code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetUserRewards)
def public_get_user_rewards(
    challenge_code: Optional[str] = None,
    goal_progression_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicGetUserRewardsSortByEnum]] = None,
    status: Optional[Union[str, PublicGetUserRewardsStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Rewards (publicGetUserRewards)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/rewards

        method: GET

        tags: ["Player Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        challenge_code: (challengeCode) OPTIONAL str in query

        goal_progression_id: (goalProgressionId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - ModelListUserRewardsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserRewards.create(
        challenge_code=challenge_code,
        goal_progression_id=goal_progression_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetUserRewards)
async def public_get_user_rewards_async(
    challenge_code: Optional[str] = None,
    goal_progression_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicGetUserRewardsSortByEnum]] = None,
    status: Optional[Union[str, PublicGetUserRewardsStatusEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List User's Rewards (publicGetUserRewards)

    - Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]

    Properties:
        url: /challenge/v1/public/namespaces/{namespace}/users/me/rewards

        method: GET

        tags: ["Player Reward"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        challenge_code: (challengeCode) OPTIONAL str in query

        goal_progression_id: (goalProgressionId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

    Responses:
        200: OK - ModelListUserRewardsResponse (OK)

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetUserRewards.create(
        challenge_code=challenge_code,
        goal_progression_id=goal_progression_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
