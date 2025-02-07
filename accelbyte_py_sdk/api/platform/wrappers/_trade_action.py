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

from ..models import TradeActionPagingSlicedResult
from ..models import TradeChainActionHistoryInfo
from ..models import TradeChainedActionCommitRequest

from ..operations.trade_action import Commit
from ..operations.trade_action import GetTradeHistoryByCriteria
from ..operations.trade_action import GetTradeHistoryByCriteriaStatusEnum
from ..operations.trade_action import GetTradeHistoryByTransactionId
from ..models import TradeChainActionHistoryInfoStatusEnum


@same_doc_as(Commit)
def commit(
    body: TradeChainedActionCommitRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """commit a chain of actions or operations (commit)

    This API is used to create a chained operations

    Other detail info:

      * Returns : chain action history
      *  FULFILL_ITEM operation supported item type : INGAMEITEM,LOOTBOX,OPTIONBOX



    ## Restrictions for metadata


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/trade/commit

        method: POST

        tags: ["TradeAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TradeChainedActionCommitRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TradeChainActionHistoryInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Commit.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Commit)
async def commit_async(
    body: TradeChainedActionCommitRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """commit a chain of actions or operations (commit)

    This API is used to create a chained operations

    Other detail info:

      * Returns : chain action history
      *  FULFILL_ITEM operation supported item type : INGAMEITEM,LOOTBOX,OPTIONBOX



    ## Restrictions for metadata


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/trade/commit

        method: POST

        tags: ["TradeAction"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TradeChainedActionCommitRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TradeChainActionHistoryInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Commit.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTradeHistoryByCriteria)
def get_trade_history_by_criteria(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, GetTradeHistoryByCriteriaStatusEnum]] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve trade history by criteria (getTradeHistoryByCriteria)

    This API is used to fetch trade history based on the provided criteria

    Other detail info:

      * Returns : trade history list based on criteria

    Properties:
        url: /platform/admin/namespaces/{namespace}/trade/history/byCriteria

        method: GET

        tags: ["TradeAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - TradeActionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTradeHistoryByCriteria.create(
        limit=limit,
        offset=offset,
        status=status,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTradeHistoryByCriteria)
async def get_trade_history_by_criteria_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, GetTradeHistoryByCriteriaStatusEnum]] = None,
    type_: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve trade history by criteria (getTradeHistoryByCriteria)

    This API is used to fetch trade history based on the provided criteria

    Other detail info:

      * Returns : trade history list based on criteria

    Properties:
        url: /platform/admin/namespaces/{namespace}/trade/history/byCriteria

        method: GET

        tags: ["TradeAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - TradeActionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTradeHistoryByCriteria.create(
        limit=limit,
        offset=offset,
        status=status,
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTradeHistoryByTransactionId)
def get_trade_history_by_transaction_id(
    transaction_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve trade history by transaction ID (getTradeHistoryByTransactionId)

    This API is used to fetch a specific trade history using transaction ID

    Other detail info:

      * Returns : trade history based on transaction ID

    Properties:
        url: /platform/admin/namespaces/{namespace}/trade/{transactionId}

        method: GET

        tags: ["TradeAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

    Responses:
        200: OK - TradeChainActionHistoryInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTradeHistoryByTransactionId.create(
        transaction_id=transaction_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTradeHistoryByTransactionId)
async def get_trade_history_by_transaction_id_async(
    transaction_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve trade history by transaction ID (getTradeHistoryByTransactionId)

    This API is used to fetch a specific trade history using transaction ID

    Other detail info:

      * Returns : trade history based on transaction ID

    Properties:
        url: /platform/admin/namespaces/{namespace}/trade/{transactionId}

        method: GET

        tags: ["TradeAction"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        transaction_id: (transactionId) REQUIRED str in path

    Responses:
        200: OK - TradeChainActionHistoryInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTradeHistoryByTransactionId.create(
        transaction_id=transaction_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
