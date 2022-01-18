# template file: justice_py_sdk_codegen/__main__.py

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
from ..operations.fulfillment import PublicRedeemCode
from ..operations.fulfillment import QueryFulfillmentHistories
from ..operations.fulfillment import RedeemCode


@same_doc_as(FulfillItem)
def fulfill_item(user_id: str, body: Optional[FulfillmentRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(FulfillItem)
async def fulfill_item_async(user_id: str, body: Optional[FulfillmentRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(FulfillRewards)
def fulfill_rewards(user_id: str, body: Optional[RewardsRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillRewards.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(FulfillRewards)
async def fulfill_rewards_async(user_id: str, body: Optional[RewardsRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillRewards.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(PublicRedeemCode)
def public_redeem_code(user_id: str, body: Optional[FulfillCodeRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicRedeemCode)
async def public_redeem_code_async(user_id: str, body: Optional[FulfillCodeRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(QueryFulfillmentHistories)
def query_fulfillment_histories(limit: Optional[int] = None, offset: Optional[int] = None, status: Optional[str] = None, user_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
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
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryFulfillmentHistories)
async def query_fulfillment_histories_async(limit: Optional[int] = None, offset: Optional[int] = None, status: Optional[str] = None, user_id: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
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
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(RedeemCode)
def redeem_code(user_id: str, body: Optional[FulfillCodeRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(RedeemCode)
async def redeem_code_async(user_id: str, body: Optional[FulfillCodeRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
