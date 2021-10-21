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


@same_doc_as(ApplyUserRedemption)
def apply_user_redemption(user_id: str, body: Optional[RedeemRequest] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ApplyUserRedemption.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(BulkDisableCodes)
def bulk_disable_codes(campaign_id: str, batch_no: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkDisableCodes.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(BulkEnableCodes)
def bulk_enable_codes(campaign_id: str, batch_no: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = BulkEnableCodes.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CreateCampaign)
def create_campaign(body: Optional[CampaignCreate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateCampaign.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(CreateCodes)
def create_codes(campaign_id: str, body: Optional[CodeCreate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateCodes.create(
        campaign_id=campaign_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(DisableCode)
def disable_code(code: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DisableCode.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(Download)
def download(campaign_id: str, batch_no: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = Download.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(EnableCode)
def enable_code(code: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = EnableCode.create(
        code=code,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetCampaign)
def get_campaign(campaign_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCampaign.create(
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetCampaignDynamic)
def get_campaign_dynamic(campaign_id: str, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCampaignDynamic.create(
        campaign_id=campaign_id,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(GetCode)
def get_code(code: str, redeemable: Optional[bool] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetCode.create(
        code=code,
        redeemable=redeemable,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(QueryCampaigns)
def query_campaigns(name: Optional[str] = None, tag: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryCampaigns.create(
        name=name,
        tag=tag,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(QueryCodes)
def query_codes(campaign_id: str, batch_no: Optional[int] = None, code: Optional[str] = None, active_only: Optional[bool] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryCodes.create(
        campaign_id=campaign_id,
        batch_no=batch_no,
        code=code,
        active_only=active_only,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(QueryRedeemHistory)
def query_redeem_history(campaign_id: str, user_id: Optional[str] = None, code: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryRedeemHistory.create(
        campaign_id=campaign_id,
        user_id=user_id,
        code=code,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request)


@same_doc_as(UpdateCampaign)
def update_campaign(campaign_id: str, body: Optional[CampaignUpdate] = None, namespace: Optional[str] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateCampaign.create(
        campaign_id=campaign_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request)
