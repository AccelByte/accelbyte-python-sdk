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

from ..models import BulkOperationResult
from ..models import CampaignBatchNameChange
from ..models import CampaignBatchNameInfo
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
from ..operations.campaign import QueryCampaignBatchNames
from ..operations.campaign import QueryCampaigns
from ..operations.campaign import QueryCodes
from ..operations.campaign import QueryRedeemHistory
from ..operations.campaign import RenameBatch
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
    body: RedeemRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem code (applyUserRedemption)

    [SERVICE COMMUNICATION ONLY] Redeem code. If the campaign which the code belongs to is INACTIVE, the code couldn't be redeemed even if its status is ACTIVE.
    Other detail info:

      * Returns : Redeem result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/redemption

        method: POST

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RedeemRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RedeemResult (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ApplyUserRedemption.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ApplyUserRedemption)
async def apply_user_redemption_async(
    body: RedeemRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Redeem code (applyUserRedemption)

    [SERVICE COMMUNICATION ONLY] Redeem code. If the campaign which the code belongs to is INACTIVE, the code couldn't be redeemed even if its status is ACTIVE.
    Other detail info:

      * Returns : Redeem result

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/redemption

        method: POST

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RedeemRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - RedeemResult (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37175: Exceeded max redeem count per code per user [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended | 37179: Exceeded max redeem count per campaign per user [{maxCount}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ApplyUserRedemption.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkDisableCodes)
def bulk_disable_codes(
    campaign_id: str,
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk disable codes (bulkDisableCodes)

    Bulk disable codes.

    Bulk disable campaign codes, all matched codes will be disabled except those have already been redeemed.
    Other detail info:

      * Returns : the number of code actually disabled

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkDisableCodes.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkDisableCodes)
async def bulk_disable_codes_async(
    campaign_id: str,
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk disable codes (bulkDisableCodes)

    Bulk disable codes.

    Bulk disable campaign codes, all matched codes will be disabled except those have already been redeemed.
    Other detail info:

      * Returns : the number of code actually disabled

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/disable/bulk

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkDisableCodes.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        batch_no=batch_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkEnableCodes)
def bulk_enable_codes(
    campaign_id: str,
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk enable codes (bulkEnableCodes)

    Bulk enable campaign codes.
    Other detail info:

      * Returns : the number of code actually enabled

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkEnableCodes.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkEnableCodes)
async def bulk_enable_codes_async(
    campaign_id: str,
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk enable codes (bulkEnableCodes)

    Bulk enable campaign codes.
    Other detail info:

      * Returns : the number of code actually enabled

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/enable/bulk

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

    Responses:
        200: OK - BulkOperationResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkEnableCodes.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        batch_no=batch_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateCampaign)
def create_campaign(
    body: CampaignCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create campaign (createCampaign)

    Create campaign.
    Other detail info:

      * Returns : created campaign

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns

        method: POST

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CampaignCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CampaignInfo (successful operation)

        400: Bad Request - ErrorEntity (37121: Invalid currency namespace [{namespace}] in discount config: {tips})

        409: Conflict - ErrorEntity (37171: Campaign [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateCampaign.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateCampaign)
async def create_campaign_async(
    body: CampaignCreate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create campaign (createCampaign)

    Create campaign.
    Other detail info:

      * Returns : created campaign

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns

        method: POST

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CampaignCreate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CampaignInfo (successful operation)

        400: Bad Request - ErrorEntity (37121: Invalid currency namespace [{namespace}] in discount config: {tips})

        409: Conflict - ErrorEntity (37171: Campaign [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    body: CodeCreate,
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create campaign codes (createCodes)

    This API is used to create campaign codes, it will increase the batch No. based on last creation.
    Other detail info:

      * Returns : number of codes created

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}

        method: POST

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CodeCreate in body

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CodeCreateResult (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37180: Code [{code}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateCodes.create(
        body=body,
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateCodes)
async def create_codes_async(
    body: CodeCreate,
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create campaign codes (createCodes)

    This API is used to create campaign codes, it will increase the batch No. based on last creation.
    Other detail info:

      * Returns : number of codes created

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}

        method: POST

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CodeCreate in body

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - CodeCreateResult (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37180: Code [{code}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateCodes.create(
        body=body,
        campaign_id=campaign_id,
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
    """Disable code (disableCode)

    Disable code.

    Disable an active code, the code can't be disabled if it has already been redeemed.
    Other detail info:

      * Returns : disabled code

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/{code}/disable

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}] | 37176: Code [{code}] has been redeemed in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Disable code (disableCode)

    Disable code.

    Disable an active code, the code can't be disabled if it has already been redeemed.
    Other detail info:

      * Returns : disabled code

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/{code}/disable

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}] | 37176: Code [{code}] has been redeemed in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    with_batch_name: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download codes (download)

    Download all or a batch of campaign's codes as a csv file.
    Other detail info:

      * Returns : codes csv file
      * The csv file will always have Batch Name column, but this column will be filled only when the withBatchName parameter is true , or when the batchName filter is not blank.

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["text/csv"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

        with_batch_name: (withBatchName) OPTIONAL bool in query

    Responses:
        200: OK - Any (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Download.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        batch_no=batch_no,
        with_batch_name=with_batch_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Download)
async def download_async(
    campaign_id: str,
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    with_batch_name: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download codes (download)

    Download all or a batch of campaign's codes as a csv file.
    Other detail info:

      * Returns : codes csv file
      * The csv file will always have Batch Name column, but this column will be filled only when the withBatchName parameter is true , or when the batchName filter is not blank.

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["text/csv"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

        with_batch_name: (withBatchName) OPTIONAL bool in query

    Responses:
        200: OK - Any (Successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Download.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        batch_no=batch_no,
        with_batch_name=with_batch_name,
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
    """Enable code (enableCode)

    Enable code.
    Other detail info:

      * Returns : enabled code

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/{code}/enable

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Enable code (enableCode)

    Enable code.
    Other detail info:

      * Returns : enabled code

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/{code}/enable

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get campaign (getCampaign)

    Get campaign info.
    Other detail info:

      * Returns : campaign info

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CampaignInfo (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get campaign (getCampaign)

    Get campaign info.
    Other detail info:

      * Returns : campaign info

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CampaignInfo (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get campaign dynamic (getCampaignDynamic)

    Get campaign dynamic.
    Other detail info:

      * Returns : campaign dynamic

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CampaignDynamicInfo (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get campaign dynamic (getCampaignDynamic)

    Get campaign dynamic.
    Other detail info:

      * Returns : campaign dynamic

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/dynamic

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CampaignDynamicInfo (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    with_batch_name: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get code info (getCode)

    Get campaign code, it will check code whether available to redeem if redeemable true.
    Other detail info:

      * Returns : code info

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/{code}

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        redeemable: (redeemable) OPTIONAL bool in query

        with_batch_name: (withBatchName) OPTIONAL bool in query

    Responses:
        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}] | 37144: Campaign batch name does not exist for batch number [{batchNo}] campaign [{campaignId}] in namespace [{namespace}].)

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCode.create(
        code=code,
        redeemable=redeemable,
        with_batch_name=with_batch_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCode)
async def get_code_async(
    code: str,
    redeemable: Optional[bool] = None,
    with_batch_name: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get code info (getCode)

    Get campaign code, it will check code whether available to redeem if redeemable true.
    Other detail info:

      * Returns : code info

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/{code}

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        redeemable: (redeemable) OPTIONAL bool in query

        with_batch_name: (withBatchName) OPTIONAL bool in query

    Responses:
        200: OK - CodeInfo (successful operation)

        404: Not Found - ErrorEntity (37142: Code [{code}] does not exist in namespace [{namespace}] | 37144: Campaign batch name does not exist for batch number [{batchNo}] campaign [{campaignId}] in namespace [{namespace}].)

        409: Conflict - ErrorEntity (37172: Campaign [{campaignId}] is inactive in namespace [{namespace}] | 37173: Code [{code}] is inactive in namespace [{namespace}] | 37174: Exceeded max redeem count per code [{maxCount}] | 37177: Code redemption not started | 37178: Code redemption already ended)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetCode.create(
        code=code,
        redeemable=redeemable,
        with_batch_name=with_batch_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryCampaignBatchNames)
def query_campaign_batch_names(
    campaign_id: str,
    batch_name: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query campaign batch names (queryCampaignBatchNames)

    Query campaign batch name by fuzzy match.
    Other detail info:

      * Returns : list of campaign batch names

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchNames

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - List[CampaignBatchNameInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryCampaignBatchNames.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryCampaignBatchNames)
async def query_campaign_batch_names_async(
    campaign_id: str,
    batch_name: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query campaign batch names (queryCampaignBatchNames)

    Query campaign batch name by fuzzy match.
    Other detail info:

      * Returns : list of campaign batch names

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchNames

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        batch_name: (batchName) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

    Responses:
        200: OK - List[CampaignBatchNameInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryCampaignBatchNames.create(
        campaign_id=campaign_id,
        batch_name=batch_name,
        limit=limit,
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
    """Query campaigns (queryCampaigns)

    Query campaigns, if name is presented, it's fuzzy match.
    Other detail info:

      * Returns : slice of campaigns

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        tag: (tag) OPTIONAL str in query

    Responses:
        200: OK - CampaignPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Query campaigns (queryCampaigns)

    Query campaigns, if name is presented, it's fuzzy match.
    Other detail info:

      * Returns : slice of campaigns

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        tag: (tag) OPTIONAL str in query

    Responses:
        200: OK - CampaignPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    with_batch_name: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query codes (queryCodes)

    Query campaign codes.
    Other detail info:

      * Returns : list of codes
      * The batchName field in the codes response will be present only when the withBatchName parameter is true , or when the batchName filter is not blank.

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

        code: (code) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        with_batch_name: (withBatchName) OPTIONAL bool in query

    Responses:
        200: OK - CodeInfoPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryCodes.create(
        campaign_id=campaign_id,
        active_only=active_only,
        batch_name=batch_name,
        batch_no=batch_no,
        code=code,
        limit=limit,
        offset=offset,
        with_batch_name=with_batch_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryCodes)
async def query_codes_async(
    campaign_id: str,
    active_only: Optional[bool] = None,
    batch_name: Optional[str] = None,
    batch_no: Optional[List[int]] = None,
    code: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    with_batch_name: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query codes (queryCodes)

    Query campaign codes.
    Other detail info:

      * Returns : list of codes
      * The batchName field in the codes response will be present only when the withBatchName parameter is true , or when the batchName filter is not blank.

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        batch_name: (batchName) OPTIONAL str in query

        batch_no: (batchNo) OPTIONAL List[int] in query

        code: (code) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        with_batch_name: (withBatchName) OPTIONAL bool in query

    Responses:
        200: OK - CodeInfoPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryCodes.create(
        campaign_id=campaign_id,
        active_only=active_only,
        batch_name=batch_name,
        batch_no=batch_no,
        code=code,
        limit=limit,
        offset=offset,
        with_batch_name=with_batch_name,
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
    """Query redeem history (queryRedeemHistory)

    Query redeem history.
    Other detail info:

      * Returns : slice of redeem history

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        code: (code) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - RedeemHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Query redeem history (queryRedeemHistory)

    Query redeem history.
    Other detail info:

      * Returns : slice of redeem history

    Properties:
        url: /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/history

        method: GET

        tags: ["Campaign"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        code: (code) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - RedeemHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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


@same_doc_as(RenameBatch)
def rename_batch(
    body: CampaignBatchNameChange,
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rename batch (renameBatch)

    Change campaign batch name.
    Other detail info:

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchName

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CampaignBatchNameChange in body

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Batch was renamed successfully)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}] | 37143: Batch name [{batchName}] does not exist for campaign [{campaignId}] in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RenameBatch.create(
        body=body,
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RenameBatch)
async def rename_batch_async(
    body: CampaignBatchNameChange,
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rename batch (renameBatch)

    Change campaign batch name.
    Other detail info:

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}/batchName

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: []

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CampaignBatchNameChange in body

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Batch was renamed successfully)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}] | 37143: Batch name [{batchName}] does not exist for campaign [{campaignId}] in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RenameBatch.create(
        body=body,
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateCampaign)
def update_campaign(
    body: CampaignUpdate,
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update campaign (updateCampaign)

    Update campaign.
    Other detail info:

      * Returns : updated campaign

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CampaignUpdate in body

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CampaignInfo (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37171: Campaign [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCampaign.create(
        body=body,
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateCampaign)
async def update_campaign_async(
    body: CampaignUpdate,
    campaign_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update campaign (updateCampaign)

    Update campaign.
    Other detail info:

      * Returns : updated campaign

    Properties:
        url: /platform/admin/namespaces/{namespace}/campaigns/{campaignId}

        method: PUT

        tags: ["Campaign"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED CampaignUpdate in body

        campaign_id: (campaignId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CampaignInfo (successful operation)

        404: Not Found - ErrorEntity (37141: Campaign [{campaignId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37171: Campaign [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateCampaign.create(
        body=body,
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
