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
from ..models import FulfillCodeRequest
from ..models import FulfillmentHistoryPagingSlicedResult
from ..models import FulfillmentRequest
from ..models import FulfillmentResult
from ..models import RewardsRequest

from ..operations.fulfillment import FulfillItem
from ..operations.fulfillment import FulfillRewards
from ..operations.fulfillment import FulfillRewardsV2
from ..operations.fulfillment import PublicRedeemCode
from ..operations.fulfillment import QueryFulfillmentHistories
from ..operations.fulfillment import QueryFulfillmentHistoriesStatusEnum
from ..operations.fulfillment import RedeemCode
from ..models import FulfillmentRequestOriginEnum, FulfillmentRequestSourceEnum
from ..models import RewardsRequestOriginEnum, RewardsRequestSourceEnum


@same_doc_as(FulfillItem)
def fulfill_item(
    user_id: str,
    body: Optional[FulfillmentRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill item (fulfillItem)

    Fulfill item.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL FulfillmentRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillItem)
async def fulfill_item_async(
    user_id: str,
    body: Optional[FulfillmentRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill item (fulfillItem)

    Fulfill item.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL FulfillmentRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FulfillRewards)
def fulfill_rewards(
    user_id: str,
    body: Optional[RewardsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards (fulfillRewards)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (fulfill successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillRewards.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillRewards)
async def fulfill_rewards_async(
    user_id: str,
    body: Optional[RewardsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards (fulfillRewards)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (fulfill successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillRewards.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FulfillRewardsV2)
def fulfill_rewards_v2(
    user_id: str,
    body: Optional[RewardsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards (fulfillRewardsV2)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillRewardsV2.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillRewardsV2)
async def fulfill_rewards_v2_async(
    user_id: str,
    body: Optional[RewardsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards (fulfillRewardsV2)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillRewardsV2.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicRedeemCode)
def public_redeem_code(
    user_id: str,
    body: Optional[FulfillCodeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (publicRedeemCode)

    Redeem campaign code.
    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicRedeemCode)
async def public_redeem_code_async(
    user_id: str,
    body: Optional[FulfillCodeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (publicRedeemCode)

    Redeem campaign code.
    Other detail info:

      * Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryFulfillmentHistories)
def query_fulfillment_histories(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryFulfillmentHistoriesStatusEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query fulfillment histories (queryFulfillmentHistories)

    Query fulfillment histories in a namespace.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:FULFILLMENT", action=2 (READ)
      *  Returns : query fulfillment history

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:FULFILLMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/fulfillment/history

        method: GET

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - FulfillmentHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryFulfillmentHistories.create(
        limit=limit,
        offset=offset,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryFulfillmentHistories)
async def query_fulfillment_histories_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, QueryFulfillmentHistoriesStatusEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query fulfillment histories (queryFulfillmentHistories)

    Query fulfillment histories in a namespace.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:FULFILLMENT", action=2 (READ)
      *  Returns : query fulfillment history

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:FULFILLMENT [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/fulfillment/history

        method: GET

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - FulfillmentHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryFulfillmentHistories.create(
        limit=limit,
        offset=offset,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RedeemCode)
def redeem_code(
    user_id: str,
    body: Optional[FulfillCodeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (redeemCode)

    Redeem campaign code.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RedeemCode)
async def redeem_code_async(
    user_id: str,
    body: Optional[FulfillCodeRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (redeemCode)

    Redeem campaign code.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT", action=1 (CREATED)
      *  Returns : fulfillment result

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:FULFILLMENT []

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
