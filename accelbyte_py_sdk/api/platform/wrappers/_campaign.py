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

from ..models import BulkOperationResult
from ..models import CampaignCreate
from ..models import CampaignDynamicInfo
from ..models import CampaignInfo
from ..models import CampaignPagingSlicedResult
from ..models import CampaignUpdate
from ..models import CodeCreate
from ..models import CodeCreateResult
from ..models import CodeInfo
from ..models import CodeInfoPagingSlicedResult
from ..models import ErrorEntity
from ..models import RedeemHistoryPagingSlicedResult
from ..models import RedeemRequest
from ..models import RedeemResult
from ..models import ValidationErrorEntity

from ..operations.campaign import ApplyUserRedemption
from ..operations.campaign import BulkDisableCodes
from ..operations.campaign import BulkEnableCodes
from ..operations.campaign import CreateCampaign
from ..operations.campaign import CreateCodes
from ..operations.campaign import DisableCode
from ..operations.campaign import Download
from ..operations.campaign import EnableCode
from ..operations.campaign import GetCampaign
from ..operations.campaign import GetCampaignDynamic
from ..operations.campaign import GetCode
from ..operations.campaign import QueryCampaigns
from ..operations.campaign import QueryCodes
from ..operations.campaign import QueryRedeemHistory
from ..operations.campaign import UpdateCampaign
from ..models import (
    CampaignCreateRedeemTypeEnum,
    CampaignCreateStatusEnum,
    CampaignCreateTypeEnum,
)
from ..models import (
    CampaignInfoRedeemTypeEnum,
    CampaignInfoStatusEnum,
    CampaignInfoTypeEnum,
)
from ..models import CampaignUpdateRedeemTypeEnum, CampaignUpdateStatusEnum
from ..models import CodeInfoRedeemTypeEnum, CodeInfoStatusEnum, CodeInfoTypeEnum


@same_doc_as(ApplyUserRedemption)
def apply_user_redemption(
    user_id: str,
    body: Optional[RedeemRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ApplyUserRedemption.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ApplyUserRedemption)
async def apply_user_redemption_async(
    user_id: str,
    body: Optional[RedeemRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ApplyUserRedemption.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkDisableCodes)
def bulk_disable_codes(
    campaign_id: str,
    batch_no: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkDisableCodes.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkDisableCodes)
async def bulk_disable_codes_async(
    campaign_id: str,
    batch_no: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkDisableCodes.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkEnableCodes)
def bulk_enable_codes(
    campaign_id: str,
    batch_no: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkEnableCodes.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkEnableCodes)
async def bulk_enable_codes_async(
    campaign_id: str,
    batch_no: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkEnableCodes.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateCampaign)
def create_campaign(
    body: Optional[CampaignCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateCampaign.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateCampaign)
async def create_campaign_async(
    body: Optional[CampaignCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateCampaign.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateCodes)
def create_codes(
    campaign_id: str,
    body: Optional[CodeCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateCodes.create(
        campaign_id=campaign_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateCodes)
async def create_codes_async(
    campaign_id: str,
    body: Optional[CodeCreate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateCodes.create(
        campaign_id=campaign_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DisableCode)
def disable_code(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableCode.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DisableCode)
async def disable_code_async(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableCode.create(
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Download)
def download(
    campaign_id: str,
    batch_no: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Download.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Download)
async def download_async(
    campaign_id: str,
    batch_no: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Download.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(EnableCode)
def enable_code(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableCode.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(EnableCode)
async def enable_code_async(
    code: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableCode.create(
        code=code,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCampaign)
def get_campaign(
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCampaign.create(
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCampaign)
async def get_campaign_async(
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCampaign.create(
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCampaignDynamic)
def get_campaign_dynamic(
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCampaignDynamic.create(
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCampaignDynamic)
async def get_campaign_dynamic_async(
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCampaignDynamic.create(
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCode)
def get_code(
    code: str,
    redeemable: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCode.create(
        code=code,
        redeemable=redeemable,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCode)
async def get_code_async(
    code: str,
    redeemable: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCode.create(
        code=code,
        redeemable=redeemable,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryCampaigns)
def query_campaigns(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryCampaigns.create(
        limit=limit,
        name=name,
        offset=offset,
        tag=tag,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryCampaigns)
async def query_campaigns_async(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    tag: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryCampaigns.create(
        limit=limit,
        name=name,
        offset=offset,
        tag=tag,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryCodes)
def query_codes(
    campaign_id: str,
    active_only: Optional[bool] = None,
    batch_no: Optional[int] = None,
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryCodes.create(
        campaign_id=campaign_id,
        active_only=active_only,
        batch_no=batch_no,
        code=code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryCodes)
async def query_codes_async(
    campaign_id: str,
    active_only: Optional[bool] = None,
    batch_no: Optional[int] = None,
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryCodes.create(
        campaign_id=campaign_id,
        active_only=active_only,
        batch_no=batch_no,
        code=code,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryRedeemHistory)
def query_redeem_history(
    campaign_id: str,
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRedeemHistory.create(
        campaign_id=campaign_id,
        code=code,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryRedeemHistory)
async def query_redeem_history_async(
    campaign_id: str,
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRedeemHistory.create(
        campaign_id=campaign_id,
        code=code,
        limit=limit,
        offset=offset,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCampaign)
def update_campaign(
    campaign_id: str,
    body: Optional[CampaignUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateCampaign.create(
        campaign_id=campaign_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCampaign)
async def update_campaign_async(
    campaign_id: str,
    body: Optional[CampaignUpdate] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateCampaign.create(
        campaign_id=campaign_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
