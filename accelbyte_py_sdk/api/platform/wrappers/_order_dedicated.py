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

from ..models import OrderSyncResult

from ..operations.order_dedicated import SyncOrders


@same_doc_as(SyncOrders)
def sync_orders(
    end: str,
    start: str,
    next_evaluated_key: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync orders (syncOrders)

    [Not supported yet in AGS Shared Cloud] Sync orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
    Other detail info:

      * Returns : sync orders

    Properties:
        url: /platform/admin/orders

        method: GET

        tags: ["Order(Dedicated)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str in query

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - OrderSyncResult (successful operation)
    """
    request = SyncOrders.create(
        end=end,
        start=start,
        next_evaluated_key=next_evaluated_key,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncOrders)
async def sync_orders_async(
    end: str,
    start: str,
    next_evaluated_key: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync orders (syncOrders)

    [Not supported yet in AGS Shared Cloud] Sync orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
    Other detail info:

      * Returns : sync orders

    Properties:
        url: /platform/admin/orders

        method: GET

        tags: ["Order(Dedicated)"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str in query

        end: (end) REQUIRED str in query

        start: (start) REQUIRED str in query

    Responses:
        200: OK - OrderSyncResult (successful operation)
    """
    request = SyncOrders.create(
        end=end,
        start=start,
        next_evaluated_key=next_evaluated_key,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
