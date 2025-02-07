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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ErrorEntity
from ..models import FulfillCodeRequest
from ..models import FulfillmentHistoryPagingSlicedResult
from ..models import FulfillmentItem
from ..models import FulfillmentPagingSlicedResult
from ..models import FulfillmentRequest
from ..models import FulfillmentResult
from ..models import FulfillmentV2Request
from ..models import FulfillmentV2Result
from ..models import PreCheckFulfillmentRequest
from ..models import RevokeFulfillmentV2Result
from ..models import RewardsRequest

from ..operations.fulfillment import FulfillItem
from ..operations.fulfillment import FulfillItems
from ..operations.fulfillment import FulfillItemsV3
from ..operations.fulfillment import FulfillRewards
from ..operations.fulfillment import FulfillRewardsV2
from ..operations.fulfillment import PreCheckFulfillItem
from ..operations.fulfillment import PublicRedeemCode
from ..operations.fulfillment import QueryFulfillmentHistories
from ..operations.fulfillment import QueryFulfillmentHistoriesStatusEnum
from ..operations.fulfillment import QueryFulfillments
from ..operations.fulfillment import QueryFulfillmentsStateEnum
from ..operations.fulfillment import RedeemCode
from ..operations.fulfillment import RetryFulfillItems
from ..operations.fulfillment import RetryFulfillItemsV3
from ..operations.fulfillment import RevokeItems
from ..operations.fulfillment import RevokeItemsV3
from ..models import FulfillmentItemItemTypeEnum
from ..models import (
    FulfillmentRequestEntitlementOriginEnum,
    FulfillmentRequestOriginEnum,
    FulfillmentRequestSourceEnum,
)
from ..models import FulfillmentV2ResultStateEnum
from ..models import RevokeFulfillmentV2ResultStateEnum
from ..models import (
    RewardsRequestEntitlementOriginEnum,
    RewardsRequestOriginEnum,
    RewardsRequestSourceEnum,
)


@same_doc_as(FulfillItem)
def fulfill_item(
    body: FulfillmentRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill item (fulfillItem)

    Fulfill item.
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillmentRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillItem)
async def fulfill_item_async(
    body: FulfillmentRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill item (fulfillItem)

    Fulfill item.
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillmentRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(FulfillItems)
def fulfill_items(
    body: FulfillmentV2Request,
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill items by transactionId (fulfillItems)

    ### The endpoint is going to be deprecated

    Description: this endpoint is Not supported yet in AGS Shared Cloud and it's used to fulfill items by transaction id.

      *  Request body : storeId, region, language, and entitlementCollectionId can be ignored.
      *  Returns : fulfillment v2 result, storeId field can be ignored.



    ### Endpoint migration guide

      *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId} [PUT]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillmentV2Request in body

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required | 38128: Cannot retry fulfillment with different payload. Please check the items list. | 38129: Cannot combine same item [{itemId}] with different [{fieldName}] value | 38130: Cannot fulfill item with type [{itemType}] in item [{itemIdentity}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)

        409: Conflict - FulfillmentV2Result ()
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillItems.create(
        body=body,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(FulfillItems)
async def fulfill_items_async(
    body: FulfillmentV2Request,
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill items by transactionId (fulfillItems)

    ### The endpoint is going to be deprecated

    Description: this endpoint is Not supported yet in AGS Shared Cloud and it's used to fulfill items by transaction id.

      *  Request body : storeId, region, language, and entitlementCollectionId can be ignored.
      *  Returns : fulfillment v2 result, storeId field can be ignored.



    ### Endpoint migration guide

      *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId} [PUT]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillmentV2Request in body

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required | 38128: Cannot retry fulfillment with different payload. Please check the items list. | 38129: Cannot combine same item [{itemId}] with different [{fieldName}] value | 38130: Cannot fulfill item with type [{itemType}] in item [{itemIdentity}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)

        409: Conflict - FulfillmentV2Result ()
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillItems.create(
        body=body,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FulfillItemsV3)
def fulfill_items_v3(
    body: FulfillmentV2Request,
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill items by transactionId (fulfillItemsV3)

    [Not supported yet in AGS Shared Cloud] Fulfill items by transactionId.
    Other detail info:

      * Request body : storeId, region, language, and entitlementCollectionId can be ignored.
      *  Returns : fulfillment v2 result, storeId field can be ignored.

    Properties:
        url: /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillmentV2Request in body

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required | 38128: Cannot retry fulfillment with different payload. Please check the items list. | 38129: Cannot combine same item [{itemId}] with different [{fieldName}] value | 38130: Cannot fulfill item with type [{itemType}] in item [{itemIdentity}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillItemsV3.create(
        body=body,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillItemsV3)
async def fulfill_items_v3_async(
    body: FulfillmentV2Request,
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill items by transactionId (fulfillItemsV3)

    [Not supported yet in AGS Shared Cloud] Fulfill items by transactionId.
    Other detail info:

      * Request body : storeId, region, language, and entitlementCollectionId can be ignored.
      *  Returns : fulfillment v2 result, storeId field can be ignored.

    Properties:
        url: /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillmentV2Request in body

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required | 38128: Cannot retry fulfillment with different payload. Please check the items list. | 38129: Cannot combine same item [{itemId}] with different [{fieldName}] value | 38130: Cannot fulfill item with type [{itemType}] in item [{itemIdentity}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{sku}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillItemsV3.create(
        body=body,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FulfillRewards)
def fulfill_rewards(
    body: RewardsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards without content (fulfillRewards)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (fulfill successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillRewards.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillRewards)
async def fulfill_rewards_async(
    body: RewardsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards without content (fulfillRewards)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (fulfill successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillRewards.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FulfillRewardsV2)
def fulfill_rewards_v2(
    body: RewardsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards (fulfillRewardsV2)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Returns : fulfillment result
      *  rewards Item unsupported Type : SUBSCRIPTION

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillRewardsV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FulfillRewardsV2)
async def fulfill_rewards_v2_async(
    body: RewardsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill rewards (fulfillRewardsV2)

    [SERVICE COMMUNICATION ONLY] Fulfill rewards.
    Other detail info:

      * Returns : fulfillment result
      *  rewards Item unsupported Type : SUBSCRIPTION

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RewardsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FulfillRewardsV2.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PreCheckFulfillItem)
def pre_check_fulfill_item(
    body: PreCheckFulfillmentRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Pre check fulfillment items (preCheckFulfillItem)

    Retrieve and check fulfillment items based on the provided request.
    Other detail info:

      * Returns : list of fulfillment items

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PreCheckFulfillmentRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[FulfillmentItem] (Successful retrieval)

        400: Bad Request - ErrorEntity (38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PreCheckFulfillItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PreCheckFulfillItem)
async def pre_check_fulfill_item_async(
    body: PreCheckFulfillmentRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Pre check fulfillment items (preCheckFulfillItem)

    Retrieve and check fulfillment items based on the provided request.
    Other detail info:

      * Returns : list of fulfillment items

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PreCheckFulfillmentRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[FulfillmentItem] (Successful retrieval)

        400: Bad Request - ErrorEntity (38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PreCheckFulfillItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicRedeemCode)
def public_redeem_code(
    body: FulfillCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (publicRedeemCode)

    Redeem campaign code, this api have rate limit, default: only allow request once per user in 2 seconds
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)

        429: Too Many Requests - ErrorEntity (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicRedeemCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicRedeemCode)
async def public_redeem_code_async(
    body: FulfillCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (publicRedeemCode)

    Redeem campaign code, this api have rate limit, default: only allow request once per user in 2 seconds
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)

        429: Too Many Requests - ErrorEntity (20007: too many requests)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicRedeemCode.create(
        body=body,
        user_id=user_id,
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

      * Returns : query fulfillment history

    Properties:
        url: /platform/admin/namespaces/{namespace}/fulfillment/history

        method: GET

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - FulfillmentHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

      * Returns : query fulfillment history

    Properties:
        url: /platform/admin/namespaces/{namespace}/fulfillment/history

        method: GET

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - FulfillmentHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(QueryFulfillments)
def query_fulfillments(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    state: Optional[Union[str, QueryFulfillmentsStateEnum]] = None,
    transaction_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query fulfillments (queryFulfillments)

    [Not supported yet in AGS Shared Cloud] Query fulfillments in a namespace.
    Other detail info:

      * Returns : list of fulfillment info:
        * storeId in items can be ignored
        * error in successList will always be null

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/fulfillments

        method: GET

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        state: (state) OPTIONAL Union[str, StateEnum] in query

        transaction_id: (transactionId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - FulfillmentPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryFulfillments.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        start_time=start_time,
        state=state,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryFulfillments)
async def query_fulfillments_async(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    state: Optional[Union[str, QueryFulfillmentsStateEnum]] = None,
    transaction_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query fulfillments (queryFulfillments)

    [Not supported yet in AGS Shared Cloud] Query fulfillments in a namespace.
    Other detail info:

      * Returns : list of fulfillment info:
        * storeId in items can be ignored
        * error in successList will always be null

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/fulfillments

        method: GET

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        state: (state) OPTIONAL Union[str, StateEnum] in query

        transaction_id: (transactionId) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - FulfillmentPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryFulfillments.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        start_time=start_time,
        state=state,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RedeemCode)
def redeem_code(
    body: FulfillCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (redeemCode)

    Redeem campaign code.
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RedeemCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RedeemCode)
async def redeem_code_async(
    body: FulfillCodeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem campaign code (redeemCode)

    Redeem campaign code.
    Other detail info:

      * Returns : fulfillment result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code

        method: POST

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED FulfillCodeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentResult (successful operation)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 20006: optimistic lock | 31177: Permanent item already owned)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RedeemCode.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RetryFulfillItems)
def retry_fulfill_items(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retry fulfill items by transactionId (retryFulfillItems)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Retry fulfill items by transactionId without sending the original payload.
    Other detail info:

      * Returns : fulfillment v2 result, storeId field can be ignored.



    ### Endpoint migration guide

      *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry [PUT]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry

        method: PUT

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)

        409: Conflict - FulfillmentV2Result ()
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetryFulfillItems.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RetryFulfillItems)
async def retry_fulfill_items_async(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retry fulfill items by transactionId (retryFulfillItems)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Retry fulfill items by transactionId without sending the original payload.
    Other detail info:

      * Returns : fulfillment v2 result, storeId field can be ignored.



    ### Endpoint migration guide

      *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry [PUT]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry

        method: PUT

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)

        409: Conflict - FulfillmentV2Result ()
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetryFulfillItems.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetryFulfillItemsV3)
def retry_fulfill_items_v3(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retry fulfill items by transactionId (retryFulfillItemsV3)

    [Not supported yet in AGS Shared Cloud] Retry fulfill items by transactionId without sending the original payload.
    Other detail info:

      * Returns : fulfillment v2 result, storeId field can be ignored.

    Properties:
        url: /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry

        method: PUT

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetryFulfillItemsV3.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetryFulfillItemsV3)
async def retry_fulfill_items_v3_async(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retry fulfill items by transactionId (retryFulfillItemsV3)

    [Not supported yet in AGS Shared Cloud] Retry fulfill items by transactionId without sending the original payload.
    Other detail info:

      * Returns : fulfillment v2 result, storeId field can be ignored.

    Properties:
        url: /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry

        method: PUT

        tags: ["Fulfillment"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - FulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RetryFulfillItemsV3.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RevokeItems)
def revoke_items(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke items by transactionId (revokeItems)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Revoke items by transactionId.
    Other detail info:

      * Returns : revoke fulfillment v2 result, storeId field can be ignored.



    ### Endpoint migration guide

      *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke [PUT]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RevokeFulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)

        409: Conflict - RevokeFulfillmentV2Result ()
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RevokeItems.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RevokeItems)
async def revoke_items_async(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke items by transactionId (revokeItems)

    ### The endpoint is going to be deprecated

    [Not supported yet in AGS Shared Cloud] Revoke items by transactionId.
    Other detail info:

      * Returns : revoke fulfillment v2 result, storeId field can be ignored.



    ### Endpoint migration guide

      *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke [PUT]

    Properties:
        url: /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RevokeFulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)

        409: Conflict - RevokeFulfillmentV2Result ()
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RevokeItems.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RevokeItemsV3)
def revoke_items_v3(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke items by transactionId (revokeItemsV3)

    [Not supported yet in AGS Shared Cloud] Revoke items by transactionId.
    Other detail info:

      * Returns : revoke fulfillment v2 result, storeId field can be ignored.

    Properties:
        url: /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RevokeFulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RevokeItemsV3.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RevokeItemsV3)
async def revoke_items_v3_async(
    transaction_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke items by transactionId (revokeItemsV3)

    [Not supported yet in AGS Shared Cloud] Revoke items by transactionId.
    Other detail info:

      * Returns : revoke fulfillment v2 result, storeId field can be ignored.

    Properties:
        url: /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke

        method: PUT

        tags: ["Fulfillment"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RevokeFulfillmentV2Result (successful operation)

        404: Not Found - ErrorEntity (38145: Fulfillment with transactionId [{transactionId}] does not exist)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RevokeItemsV3.create(
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
