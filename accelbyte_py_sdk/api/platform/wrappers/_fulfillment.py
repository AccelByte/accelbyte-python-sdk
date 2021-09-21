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
from ....core import same_doc_as

from ..models import ErrorEntity
from ..models import FulfillCodeRequest
from ..models import FulfillmentHistoryPagingSlicedResult
from ..models import FulfillmentRequest
from ..models import FulfillmentResult

from ..operations.fulfillment import FulfillItem
from ..operations.fulfillment import PublicRedeemCode
from ..operations.fulfillment import QueryFulfillmentHistories


@same_doc_as(FulfillItem)
def fulfill_item(user_id: str, body: Optional[FulfillmentRequest] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = FulfillItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(PublicRedeemCode)
def public_redeem_code(user_id: str, body: Optional[FulfillCodeRequest] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicRedeemCode.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(QueryFulfillmentHistories)
def query_fulfillment_histories(status: Optional[str] = None, user_id: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryFulfillmentHistories.create(
        status=status,
        user_id=user_id,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)
