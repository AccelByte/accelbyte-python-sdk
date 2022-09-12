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

from ..models import InvoiceSummary
from ..models import ValidationErrorEntity

from ..operations.invoice import DownloadInvoiceDetails
from ..operations.invoice import DownloadInvoiceDetailsItemTypeEnum
from ..operations.invoice import GenerateInvoiceSummary
from ..operations.invoice import GenerateInvoiceSummaryItemTypeEnum


@same_doc_as(DownloadInvoiceDetails)
def download_invoice_details(
    end_time: str,
    start_time: str,
    feature: Optional[str] = None,
    item_id: Optional[str] = None,
    item_type: Optional[Union[str, DownloadInvoiceDetailsItemTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DownloadInvoiceDetails.create(
        end_time=end_time,
        start_time=start_time,
        feature=feature,
        item_id=item_id,
        item_type=item_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DownloadInvoiceDetails)
async def download_invoice_details_async(
    end_time: str,
    start_time: str,
    feature: Optional[str] = None,
    item_id: Optional[str] = None,
    item_type: Optional[Union[str, DownloadInvoiceDetailsItemTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DownloadInvoiceDetails.create(
        end_time=end_time,
        start_time=start_time,
        feature=feature,
        item_id=item_id,
        item_type=item_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GenerateInvoiceSummary)
def generate_invoice_summary(
    end_time: str,
    start_time: str,
    feature: Optional[str] = None,
    item_id: Optional[str] = None,
    item_type: Optional[Union[str, GenerateInvoiceSummaryItemTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GenerateInvoiceSummary.create(
        end_time=end_time,
        start_time=start_time,
        feature=feature,
        item_id=item_id,
        item_type=item_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GenerateInvoiceSummary)
async def generate_invoice_summary_async(
    end_time: str,
    start_time: str,
    feature: Optional[str] = None,
    item_id: Optional[str] = None,
    item_type: Optional[Union[str, GenerateInvoiceSummaryItemTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GenerateInvoiceSummary.create(
        end_time=end_time,
        start_time=start_time,
        feature=feature,
        item_id=item_id,
        item_type=item_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
