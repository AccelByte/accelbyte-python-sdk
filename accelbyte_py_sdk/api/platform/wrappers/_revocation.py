# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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
from ..models import RevocationConfigInfo
from ..models import RevocationConfigUpdate
from ..models import RevocationHistoryPagingSlicedResult
from ..models import RevocationRequest
from ..models import RevocationResult

from ..operations.revocation import DeleteRevocationConfig
from ..operations.revocation import DoRevocation
from ..operations.revocation import GetPaymentCallbackConfig1
from ..operations.revocation import QueryRevocationHistories
from ..operations.revocation import (
    QueryRevocationHistoriesSourceEnum,
    QueryRevocationHistoriesStatusEnum,
)
from ..operations.revocation import UpdateRevocationConfig
from ..models import RevocationRequestSourceEnum
from ..models import RevocationResultStatusEnum


@same_doc_as(DeleteRevocationConfig)
def delete_revocation_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteRevocationConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteRevocationConfig)
async def delete_revocation_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteRevocationConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DoRevocation)
def do_revocation(
    user_id: str,
    body: Optional[RevocationRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DoRevocation.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DoRevocation)
async def do_revocation_async(
    user_id: str,
    body: Optional[RevocationRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DoRevocation.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPaymentCallbackConfig1)
def get_payment_callback_config_1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentCallbackConfig1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPaymentCallbackConfig1)
async def get_payment_callback_config_1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPaymentCallbackConfig1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryRevocationHistories)
def query_revocation_histories(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    source: Optional[Union[str, QueryRevocationHistoriesSourceEnum]] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryRevocationHistoriesStatusEnum]] = None,
    transaction_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRevocationHistories.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        source=source,
        start_time=start_time,
        status=status,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryRevocationHistories)
async def query_revocation_histories_async(
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    source: Optional[Union[str, QueryRevocationHistoriesSourceEnum]] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryRevocationHistoriesStatusEnum]] = None,
    transaction_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRevocationHistories.create(
        end_time=end_time,
        limit=limit,
        offset=offset,
        source=source,
        start_time=start_time,
        status=status,
        transaction_id=transaction_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateRevocationConfig)
def update_revocation_config(
    body: Optional[RevocationConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateRevocationConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateRevocationConfig)
async def update_revocation_config_async(
    body: Optional[RevocationConfigUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateRevocationConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
