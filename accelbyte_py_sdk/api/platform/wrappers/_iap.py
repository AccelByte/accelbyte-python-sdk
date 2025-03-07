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

from ..models import AppleIAPConfigInfo
from ..models import AppleIAPConfigRequest
from ..models import AppleIAPConfigVersionInfo
from ..models import AppleIAPReceipt
from ..models import AppleIAPRequest
from ..models import EpicGamesIAPConfigInfo
from ..models import EpicGamesIAPConfigRequest
from ..models import EpicGamesReconcileRequest
from ..models import EpicGamesReconcileResult
from ..models import ErrorEntity
from ..models import GoogleIAPConfigInfo
from ..models import GoogleIAPConfigRequest
from ..models import GoogleIAPReceipt
from ..models import GoogleReceiptResolveResult
from ..models import IAPConsumeHistoryPagingSlicedResult
from ..models import IAPItemConfigInfo
from ..models import IAPItemConfigUpdate
from ..models import IAPItemMappingInfo
from ..models import IAPOrderConsumeDetailInfo
from ..models import IAPOrderInfo
from ..models import IAPOrderLineItemInfo
from ..models import IAPOrderPagingSlicedResult
from ..models import IAPOrderShortInfo
from ..models import MockIAPReceipt
from ..models import OculusIAPConfigInfo
from ..models import OculusIAPConfigRequest
from ..models import OculusReconcileResult
from ..models import PlayStationIAPConfigInfo
from ..models import PlayStationMultiServiceLabelsReconcileRequest
from ..models import PlayStationReconcileRequest
from ..models import PlayStationReconcileResult
from ..models import PlaystationIAPConfigRequest
from ..models import ResetJobRequest
from ..models import SteamAbnormalTransactionPagingSlicedResult
from ..models import SteamIAPConfig
from ..models import SteamIAPConfigInfo
from ..models import SteamIAPConfigRequest
from ..models import SteamReportInfoPagingSlicedResult
from ..models import SteamReportJobInfo
from ..models import SteamSyncByTransactionRequest
from ..models import SteamSyncRequest
from ..models import TestResult
from ..models import TwitchIAPConfigInfo
from ..models import TwitchIAPConfigRequest
from ..models import TwitchSyncRequest
from ..models import TwitchSyncResult
from ..models import ValidationErrorEntity
from ..models import XblIAPConfigInfo
from ..models import XblIAPConfigRequest
from ..models import XblReconcileRequest
from ..models import XblReconcileResult

from ..operations.iap import AdminGetIAPOrderLineItems
from ..operations.iap import AdminGetSteamJobInfo
from ..operations.iap import AdminRefundIAPOrder
from ..operations.iap import AdminResetSteamJobTime
from ..operations.iap import AdminSyncSteamAbnormalTransaction
from ..operations.iap import AdminSyncSteamIAPByTransaction
from ..operations.iap import DeleteAppleIAPConfig
from ..operations.iap import DeleteEpicGamesIAPConfig
from ..operations.iap import DeleteGoogleIAPConfig
from ..operations.iap import DeleteIAPItemConfig
from ..operations.iap import DeleteOculusIAPConfig
from ..operations.iap import DeletePlaystationIAPConfig
from ..operations.iap import DeleteSteamIAPConfig
from ..operations.iap import DeleteTwitchIAPConfig
from ..operations.iap import DeleteXblAPConfig
from ..operations.iap import GetAppleConfigVersion
from ..operations.iap import GetAppleIAPConfig
from ..operations.iap import GetEpicGamesIAPConfig
from ..operations.iap import GetGoogleIAPConfig
from ..operations.iap import GetIAPItemConfig
from ..operations.iap import GetIAPItemMapping
from ..operations.iap import GetIAPItemMappingPlatformEnum
from ..operations.iap import GetIAPOrderConsumeDetails
from ..operations.iap import GetOculusIAPConfig
from ..operations.iap import GetPlayStationIAPConfig
from ..operations.iap import GetSteamIAPConfig
from ..operations.iap import GetTwitchIAPConfig
from ..operations.iap import GetXblIAPConfig
from ..operations.iap import MockFulfillIAPItem
from ..operations.iap import PublicFulfillAppleIAPItem
from ..operations.iap import PublicFulfillGoogleIAPItem
from ..operations.iap import PublicReconcilePlayStationStore
from ..operations.iap import PublicReconcilePlayStationStoreWithMultipleServiceLabels
from ..operations.iap import QueryAbnormalTransactions
from ..operations.iap import QueryAllUserIAPOrders
from ..operations.iap import QuerySteamReportHistories
from ..operations.iap import QuerySteamReportHistoriesProcessStatusEnum
from ..operations.iap import QueryUserIAPConsumeHistory
from ..operations.iap import (
    QueryUserIAPConsumeHistoryStatusEnum,
    QueryUserIAPConsumeHistoryTypeEnum,
)
from ..operations.iap import QueryUserIAPOrders
from ..operations.iap import QueryUserIAPOrdersStatusEnum, QueryUserIAPOrdersTypeEnum
from ..operations.iap import SyncEpicGamesInventory
from ..operations.iap import SyncOculusConsumableEntitlements
from ..operations.iap import SyncSteamAbnormalTransaction
from ..operations.iap import SyncSteamIAPByTransaction
from ..operations.iap import SyncSteamInventory
from ..operations.iap import SyncTwitchDropsEntitlement
from ..operations.iap import SyncTwitchDropsEntitlement1
from ..operations.iap import SyncXboxInventory
from ..operations.iap import UpdateAppleIAPConfig
from ..operations.iap import UpdateAppleP8File
from ..operations.iap import UpdateEpicGamesIAPConfig
from ..operations.iap import UpdateGoogleIAPConfig
from ..operations.iap import UpdateGoogleP12File
from ..operations.iap import UpdateIAPItemConfig
from ..operations.iap import UpdateOculusIAPConfig
from ..operations.iap import UpdatePlaystationIAPConfig
from ..operations.iap import UpdateSteamIAPConfig
from ..operations.iap import UpdateTwitchIAPConfig
from ..operations.iap import UpdateXblBPCertFile
from ..operations.iap import UpdateXblIAPConfig
from ..operations.iap import V2PublicFulfillAppleIAPItem
from ..operations.iap import ValidateExistedPlaystationIAPConfig
from ..operations.iap import ValidatePlaystationIAPConfig
from ..models import AppleIAPConfigInfoVersionEnum
from ..models import AppleIAPConfigRequestVersionEnum
from ..models import AppleIAPConfigVersionInfoVersionEnum
from ..models import EpicGamesReconcileResultStatusEnum
from ..models import IAPOrderConsumeDetailInfoStatusEnum
from ..models import (
    IAPOrderInfoStatusEnum,
    IAPOrderInfoSyncModeEnum,
    IAPOrderInfoTypeEnum,
)
from ..models import (
    IAPOrderLineItemInfoItemIdentityTypeEnum,
    IAPOrderLineItemInfoPlatformEnum,
    IAPOrderLineItemInfoStatusEnum,
)
from ..models import IAPOrderShortInfoStatusEnum
from ..models import MockIAPReceiptItemIdentityTypeEnum, MockIAPReceiptTypeEnum
from ..models import (
    OculusReconcileResultIapOrderStatusEnum,
    OculusReconcileResultItemIdentityTypeEnum,
)
from ..models import PlayStationReconcileResultStatusEnum
from ..models import ResetJobRequestEnvEnum
from ..models import SteamIAPConfigEnvEnum, SteamIAPConfigSyncModeEnum
from ..models import SteamIAPConfigInfoEnvEnum, SteamIAPConfigInfoSyncModeEnum
from ..models import SteamIAPConfigRequestEnvEnum, SteamIAPConfigRequestSyncModeEnum
from ..models import SteamReportJobInfoEnvEnum
from ..models import TwitchSyncResultIapOrderStatusEnum
from ..models import XblReconcileResultIapOrderStatusEnum


@same_doc_as(AdminGetIAPOrderLineItems)
def admin_get_iap_order_line_items(
    iap_order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query IAP order line items (adminGetIAPOrderLineItems)

    Query IAP order ine items.
    Other detail info:

      * Returns : paginated iap orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/orders/{iapOrderNo}/line_items

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        iap_order_no: (iapOrderNo) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[IAPOrderLineItemInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetIAPOrderLineItems.create(
        iap_order_no=iap_order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetIAPOrderLineItems)
async def admin_get_iap_order_line_items_async(
    iap_order_no: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query IAP order line items (adminGetIAPOrderLineItems)

    Query IAP order ine items.
    Other detail info:

      * Returns : paginated iap orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/orders/{iapOrderNo}/line_items

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        iap_order_no: (iapOrderNo) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[IAPOrderLineItemInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetIAPOrderLineItems.create(
        iap_order_no=iap_order_no,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetSteamJobInfo)
def admin_get_steam_job_info(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query steam report job info (adminGetSteamJobInfo)

    Query steam report info

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/job

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[SteamReportJobInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetSteamJobInfo.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetSteamJobInfo)
async def admin_get_steam_job_info_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query steam report job info (adminGetSteamJobInfo)

    Query steam report info

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/job

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[SteamReportJobInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetSteamJobInfo.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRefundIAPOrder)
def admin_refund_iap_order(
    iap_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Refund IAP Order (adminRefundIAPOrder)

    Only support steam transaction mode

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        iap_order_no: (iapOrderNo) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - IAPOrderInfo (successful operation)

        204: No Content - (Refund IAP Order successfully)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user)

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}]. | 39151: IAP order no [{iapOrderNo}] not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception with status code [{statusCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRefundIAPOrder.create(
        iap_order_no=iap_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRefundIAPOrder)
async def admin_refund_iap_order_async(
    iap_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Refund IAP Order (adminRefundIAPOrder)

    Only support steam transaction mode

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        iap_order_no: (iapOrderNo) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - IAPOrderInfo (successful operation)

        204: No Content - (Refund IAP Order successfully)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user)

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}]. | 39151: IAP order no [{iapOrderNo}] not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception with status code [{statusCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRefundIAPOrder.create(
        iap_order_no=iap_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminResetSteamJobTime)
def admin_reset_steam_job_time(
    body: ResetJobRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset steam report job with a special time (adminResetSteamJobTime)

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/job/reset

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ResetJobRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SteamReportJobInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetSteamJobTime.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminResetSteamJobTime)
async def admin_reset_steam_job_time_async(
    body: ResetJobRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reset steam report job with a special time (adminResetSteamJobTime)

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/job/reset

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ResetJobRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SteamReportJobInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminResetSteamJobTime.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSyncSteamAbnormalTransaction)
def admin_sync_steam_abnormal_transaction(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Abnormal transaction, Sync steam order by transaction. only works when steam sync mode is TRANSACTION. (adminSyncSteamAbnormalTransaction)

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception  with status code [{statusCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncSteamAbnormalTransaction.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSyncSteamAbnormalTransaction)
async def admin_sync_steam_abnormal_transaction_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Abnormal transaction, Sync steam order by transaction. only works when steam sync mode is TRANSACTION. (adminSyncSteamAbnormalTransaction)

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception  with status code [{statusCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncSteamAbnormalTransaction.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSyncSteamIAPByTransaction)
def admin_sync_steam_iap_by_transaction(
    body: SteamSyncByTransactionRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Manual sync steam transaction. only works when steam sync mode is TRANSACTION. (adminSyncSteamIAPByTransaction)

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamSyncByTransactionRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception with error code [{errorCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncSteamIAPByTransaction.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSyncSteamIAPByTransaction)
async def admin_sync_steam_iap_by_transaction_async(
    body: SteamSyncByTransactionRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Manual sync steam transaction. only works when steam sync mode is TRANSACTION. (adminSyncSteamIAPByTransaction)

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamSyncByTransactionRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception with error code [{errorCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSyncSteamIAPByTransaction.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAppleIAPConfig)
def delete_apple_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete apple iap config (deleteAppleIAPConfig)

    Delete apple iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAppleIAPConfig)
async def delete_apple_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete apple iap config (deleteAppleIAPConfig)

    Delete apple iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppleIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteEpicGamesIAPConfig)
def delete_epic_games_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete epic games iap config (deleteEpicGamesIAPConfig)

    Delete epic games iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/epicgames

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteEpicGamesIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteEpicGamesIAPConfig)
async def delete_epic_games_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete epic games iap config (deleteEpicGamesIAPConfig)

    Delete epic games iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/epicgames

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteEpicGamesIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGoogleIAPConfig)
def delete_google_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete google iap config (deleteGoogleIAPConfig)

    Delete google iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGoogleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGoogleIAPConfig)
async def delete_google_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete google iap config (deleteGoogleIAPConfig)

    Delete google iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGoogleIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteIAPItemConfig)
def delete_iap_item_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a iap item config (deleteIAPItemConfig)

    delete a iap item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/item

        method: DELETE

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteIAPItemConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteIAPItemConfig)
async def delete_iap_item_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a iap item config (deleteIAPItemConfig)

    delete a iap item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/item

        method: DELETE

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteIAPItemConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteOculusIAPConfig)
def delete_oculus_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete oculus iap config (deleteOculusIAPConfig)

    Delete oculus iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/oculus

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteOculusIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteOculusIAPConfig)
async def delete_oculus_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete oculus iap config (deleteOculusIAPConfig)

    Delete oculus iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/oculus

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteOculusIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePlaystationIAPConfig)
def delete_playstation_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete playstation iap config (deletePlaystationIAPConfig)

    Delete playstation iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePlaystationIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePlaystationIAPConfig)
async def delete_playstation_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete playstation iap config (deletePlaystationIAPConfig)

    Delete playstation iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeletePlaystationIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSteamIAPConfig)
def delete_steam_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete steam iap config (deleteSteamIAPConfig)

    Delete steam iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/steam

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSteamIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSteamIAPConfig)
async def delete_steam_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete steam iap config (deleteSteamIAPConfig)

    Delete steam iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/steam

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSteamIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteTwitchIAPConfig)
def delete_twitch_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete twitch iap config (deleteTwitchIAPConfig)

    Delete twitch iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/twitch

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTwitchIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTwitchIAPConfig)
async def delete_twitch_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete twitch iap config (deleteTwitchIAPConfig)

    Delete twitch iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/twitch

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTwitchIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteXblAPConfig)
def delete_xbl_ap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete xbl iap config (deleteXblAPConfig)

    Delete xbl iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteXblAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteXblAPConfig)
async def delete_xbl_ap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete xbl iap config (deleteXblAPConfig)

    Delete xbl iap config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl

        method: DELETE

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Delete successfully)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteXblAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAppleConfigVersion)
def get_apple_config_version(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get apple config version (getAppleConfigVersion)

    Get apple config version.

    Properties:
        url: /platform/public/namespaces/{namespace}/iap/apple/config/version

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigVersionInfo (successful operation)

        404: Not Found - ErrorEntity (39142: Apple IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppleConfigVersion.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAppleConfigVersion)
async def get_apple_config_version_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get apple config version (getAppleConfigVersion)

    Get apple config version.

    Properties:
        url: /platform/public/namespaces/{namespace}/iap/apple/config/version

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigVersionInfo (successful operation)

        404: Not Found - ErrorEntity (39142: Apple IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppleConfigVersion.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAppleIAPConfig)
def get_apple_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get apple iap config (getAppleIAPConfig)

    Get apple iap config.
    Other detail info:

      * Returns : apple iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAppleIAPConfig)
async def get_apple_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get apple iap config (getAppleIAPConfig)

    Get apple iap config.
    Other detail info:

      * Returns : apple iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppleIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetEpicGamesIAPConfig)
def get_epic_games_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get epicgames iap config (getEpicGamesIAPConfig)

    Get epic games iap config.
    Other detail info:

      * Returns : epic games iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/epicgames

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - EpicGamesIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetEpicGamesIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetEpicGamesIAPConfig)
async def get_epic_games_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get epicgames iap config (getEpicGamesIAPConfig)

    Get epic games iap config.
    Other detail info:

      * Returns : epic games iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/epicgames

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - EpicGamesIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetEpicGamesIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGoogleIAPConfig)
def get_google_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get google iap config (getGoogleIAPConfig)

    Get google iap config.
    Other detail info:

      * Returns : google iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GoogleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGoogleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGoogleIAPConfig)
async def get_google_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get google iap config (getGoogleIAPConfig)

    Get google iap config.
    Other detail info:

      * Returns : google iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GoogleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGoogleIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetIAPItemConfig)
def get_iap_item_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get iap item config (getIAPItemConfig)

    Get iap item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/item

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - IAPItemConfigInfo (successful operation)

        404: Not Found - ErrorEntity (39341: IAP item config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIAPItemConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetIAPItemConfig)
async def get_iap_item_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get iap item config (getIAPItemConfig)

    Get iap item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/item

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - IAPItemConfigInfo (successful operation)

        404: Not Found - ErrorEntity (39341: IAP item config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIAPItemConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetIAPItemMapping)
def get_iap_item_mapping(
    platform: Optional[Union[str, GetIAPItemMappingPlatformEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get iap item mapping (getIAPItemMapping)

    Get iap item mapping.

    Properties:
        url: /platform/public/namespaces/{namespace}/iap/item/mapping

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

    Responses:
        200: OK - IAPItemMappingInfo (successful operation)

        404: Not Found - ErrorEntity (39341: IAP item config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIAPItemMapping.create(
        platform=platform,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetIAPItemMapping)
async def get_iap_item_mapping_async(
    platform: Optional[Union[str, GetIAPItemMappingPlatformEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get iap item mapping (getIAPItemMapping)

    Get iap item mapping.

    Properties:
        url: /platform/public/namespaces/{namespace}/iap/item/mapping

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform: (platform) OPTIONAL Union[str, PlatformEnum] in query

    Responses:
        200: OK - IAPItemMappingInfo (successful operation)

        404: Not Found - ErrorEntity (39341: IAP item config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIAPItemMapping.create(
        platform=platform,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetIAPOrderConsumeDetails)
def get_iap_order_consume_details(
    iap_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get IAP Order Consume Details by IAP Order Number. (getIAPOrderConsumeDetails)

    Get IAP Order Consume Details by IAP Order Number.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/{iapOrderNo}/consumedetails

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        iap_order_no: (iapOrderNo) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[IAPOrderConsumeDetailInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIAPOrderConsumeDetails.create(
        iap_order_no=iap_order_no,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetIAPOrderConsumeDetails)
async def get_iap_order_consume_details_async(
    iap_order_no: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get IAP Order Consume Details by IAP Order Number. (getIAPOrderConsumeDetails)

    Get IAP Order Consume Details by IAP Order Number.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/{iapOrderNo}/consumedetails

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        iap_order_no: (iapOrderNo) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[IAPOrderConsumeDetailInfo] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIAPOrderConsumeDetails.create(
        iap_order_no=iap_order_no,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetOculusIAPConfig)
def get_oculus_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get oculus iap config (getOculusIAPConfig)

    Get oculus iap config.
    Other detail info:

      * Returns : steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/oculus

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - OculusIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOculusIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetOculusIAPConfig)
async def get_oculus_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get oculus iap config (getOculusIAPConfig)

    Get oculus iap config.
    Other detail info:

      * Returns : steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/oculus

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - OculusIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOculusIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlayStationIAPConfig)
def get_play_station_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get playstation iap config (getPlayStationIAPConfig)

    Get playstation iap config.
    Other detail info:

      * Returns : playstation iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlayStationIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayStationIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlayStationIAPConfig)
async def get_play_station_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get playstation iap config (getPlayStationIAPConfig)

    Get playstation iap config.
    Other detail info:

      * Returns : playstation iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlayStationIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlayStationIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSteamIAPConfig)
def get_steam_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get steam iap config (getSteamIAPConfig)

    Get steam iap config.
    Other detail info:

      * Returns : steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/steam

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SteamIAPConfig (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSteamIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSteamIAPConfig)
async def get_steam_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get steam iap config (getSteamIAPConfig)

    Get steam iap config.
    Other detail info:

      * Returns : steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/steam

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SteamIAPConfig (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSteamIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTwitchIAPConfig)
def get_twitch_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get twitch iap config (getTwitchIAPConfig)

    Get twitch iap config.
    Other detail info:

      * Returns : twitch iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/twitch

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TwitchIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTwitchIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTwitchIAPConfig)
async def get_twitch_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get twitch iap config (getTwitchIAPConfig)

    Get twitch iap config.
    Other detail info:

      * Returns : twitch iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/twitch

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TwitchIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTwitchIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetXblIAPConfig)
def get_xbl_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get xbox iap config (getXblIAPConfig)

    Get xbox iap config.
    Other detail info:

      * Returns : xbox iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - XblIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetXblIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetXblIAPConfig)
async def get_xbl_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get xbox iap config (getXblIAPConfig)

    Get xbox iap config.
    Other detail info:

      * Returns : xbox iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - XblIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetXblIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(MockFulfillIAPItem)
def mock_fulfill_iap_item(
    body: MockIAPReceipt,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock fulfill iap item. (mockFulfillIAPItem)

    [TEST FACILITY ONLY] Forbidden in live environment. Mock fulfill iap item without validate receipt.Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED MockIAPReceipt in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Fulfill item successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = MockFulfillIAPItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MockFulfillIAPItem)
async def mock_fulfill_iap_item_async(
    body: MockIAPReceipt,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock fulfill iap item. (mockFulfillIAPItem)

    [TEST FACILITY ONLY] Forbidden in live environment. Mock fulfill iap item without validate receipt.Other detail info:

      * Returns :

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED MockIAPReceipt in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Fulfill item successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = MockFulfillIAPItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicFulfillAppleIAPItem)
def public_fulfill_apple_iap_item(
    body: AppleIAPReceipt,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill apple iap item. (publicFulfillAppleIAPItem)

    Verify apple iap receipt and fulfill item. don't support subscriptionOther detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AppleIAPReceipt in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Fulfill item successfully)

        400: Bad Request - ErrorEntity (39121: Apple iap receipt verify failed with status code [{statusCode}] | 35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39138: Apple IAP version mismatch detected: The current configuration is set to  [{configVersion}], but the API version is [{apiVersion}]. Please ensure that both the configuration and API versions are aligned)

        404: Not Found - ErrorEntity (39141: Apple iap receipt of transaction [{transactionId}] for productId [{}] does not exist | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 39142: Apple IAP config not found in namespace [{namespace}])

        409: Conflict - ErrorEntity (39171: The bundle id in namespace [{namespace}] expect [{expected}] but was [{actual}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicFulfillAppleIAPItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicFulfillAppleIAPItem)
async def public_fulfill_apple_iap_item_async(
    body: AppleIAPReceipt,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill apple iap item. (publicFulfillAppleIAPItem)

    Verify apple iap receipt and fulfill item. don't support subscriptionOther detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AppleIAPReceipt in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Fulfill item successfully)

        400: Bad Request - ErrorEntity (39121: Apple iap receipt verify failed with status code [{statusCode}] | 35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39138: Apple IAP version mismatch detected: The current configuration is set to  [{configVersion}], but the API version is [{apiVersion}]. Please ensure that both the configuration and API versions are aligned)

        404: Not Found - ErrorEntity (39141: Apple iap receipt of transaction [{transactionId}] for productId [{}] does not exist | 30341: Item [{itemId}] does not exist in namespace [{namespace}] | 39142: Apple IAP config not found in namespace [{namespace}])

        409: Conflict - ErrorEntity (39171: The bundle id in namespace [{namespace}] expect [{expected}] but was [{actual}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicFulfillAppleIAPItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicFulfillGoogleIAPItem)
def public_fulfill_google_iap_item(
    body: GoogleIAPReceipt,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill google iap item. (publicFulfillGoogleIAPItem)

    Verify google iap receipt and fulfill item.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GoogleIAPReceipt in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GoogleReceiptResolveResult (Successful operation)

        400: Bad Request - ErrorEntity (39122: Google iap receipt is invalid with status code [{statusCode}] and error message [{message}] | 35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required | 39135: Invalid Google IAP config under namespace [{namespace}]: [{message}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 39148: Google IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39172: The order id in namespace [{namespace}] expect [{expected}] but was [{actual}] | 39173: The purchase status of google play order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}] | 39174: The google iap purchase time of order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicFulfillGoogleIAPItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicFulfillGoogleIAPItem)
async def public_fulfill_google_iap_item_async(
    body: GoogleIAPReceipt,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill google iap item. (publicFulfillGoogleIAPItem)

    Verify google iap receipt and fulfill item.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GoogleIAPReceipt in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GoogleReceiptResolveResult (Successful operation)

        400: Bad Request - ErrorEntity (39122: Google iap receipt is invalid with status code [{statusCode}] and error message [{message}] | 35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 38122: Subscription endDate required | 39135: Invalid Google IAP config under namespace [{namespace}]: [{message}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 39148: Google IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39172: The order id in namespace [{namespace}] expect [{expected}] but was [{actual}] | 39173: The purchase status of google play order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}] | 39174: The google iap purchase time of order [{orderId}] in namespace [{namespace}] expect [{expected}] but was [{actual}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicFulfillGoogleIAPItem.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicReconcilePlayStationStore)
def public_reconcile_play_station_store(
    user_id: str,
    body: Optional[PlayStationReconcileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with entitlements in PSN Store. (publicReconcilePlayStationStore)

    Synchronize with entitlements in PSN Store.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PlayStationReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[PlayStationReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicReconcilePlayStationStore.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicReconcilePlayStationStore)
async def public_reconcile_play_station_store_async(
    user_id: str,
    body: Optional[PlayStationReconcileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with entitlements in PSN Store. (publicReconcilePlayStationStore)

    Synchronize with entitlements in PSN Store.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PlayStationReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[PlayStationReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicReconcilePlayStationStore.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicReconcilePlayStationStoreWithMultipleServiceLabels)
def public_reconcile_play_station_store_with_multiple_service_labels(
    body: PlayStationMultiServiceLabelsReconcileRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with entitlements in PSN Store with multiple service labels. (publicReconcilePlayStationStoreWithMultipleServiceLabels)

    Synchronize with entitlements in PSN Store with multiple service labels.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlayStationMultiServiceLabelsReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[PlayStationReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicReconcilePlayStationStoreWithMultipleServiceLabels.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicReconcilePlayStationStoreWithMultipleServiceLabels)
async def public_reconcile_play_station_store_with_multiple_service_labels_async(
    body: PlayStationMultiServiceLabelsReconcileRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with entitlements in PSN Store with multiple service labels. (publicReconcilePlayStationStoreWithMultipleServiceLabels)

    Synchronize with entitlements in PSN Store with multiple service labels.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlayStationMultiServiceLabelsReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[PlayStationReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicReconcilePlayStationStoreWithMultipleServiceLabels.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryAbnormalTransactions)
def query_abnormal_transactions(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order_id: Optional[str] = None,
    steam_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query steam abnormal transactions (queryAbnormalTransactions)

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/abnormal_transactions

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_id: (orderId) OPTIONAL str in query

        steam_id: (steamId) OPTIONAL str in query

    Responses:
        200: OK - SteamAbnormalTransactionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryAbnormalTransactions.create(
        limit=limit,
        offset=offset,
        order_id=order_id,
        steam_id=steam_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryAbnormalTransactions)
async def query_abnormal_transactions_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order_id: Optional[str] = None,
    steam_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query steam abnormal transactions (queryAbnormalTransactions)

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/abnormal_transactions

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_id: (orderId) OPTIONAL str in query

        steam_id: (steamId) OPTIONAL str in query

    Responses:
        200: OK - SteamAbnormalTransactionPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryAbnormalTransactions.create(
        limit=limit,
        offset=offset,
        order_id=order_id,
        steam_id=steam_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryAllUserIAPOrders)
def query_all_user_iap_orders(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query all user IAP orders (queryAllUserIAPOrders)

    Query all user IAP orders.
    Other detail info:

      * Returns : list of iap orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/all

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryAllUserIAPOrders.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryAllUserIAPOrders)
async def query_all_user_iap_orders_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query all user IAP orders (queryAllUserIAPOrders)

    Query all user IAP orders.
    Other detail info:

      * Returns : list of iap orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/all

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryAllUserIAPOrders.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QuerySteamReportHistories)
def query_steam_report_histories(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order_id: Optional[str] = None,
    process_status: Optional[
        Union[str, QuerySteamReportHistoriesProcessStatusEnum]
    ] = None,
    steam_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get IAP steam report process histories, default sort by created at (querySteamReportHistories)

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/report/histories

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_id: (orderId) OPTIONAL str in query

        process_status: (processStatus) OPTIONAL Union[str, ProcessStatusEnum] in query

        steam_id: (steamId) OPTIONAL str in query

    Responses:
        200: OK - SteamReportInfoPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySteamReportHistories.create(
        limit=limit,
        offset=offset,
        order_id=order_id,
        process_status=process_status,
        steam_id=steam_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QuerySteamReportHistories)
async def query_steam_report_histories_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order_id: Optional[str] = None,
    process_status: Optional[
        Union[str, QuerySteamReportHistoriesProcessStatusEnum]
    ] = None,
    steam_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get IAP steam report process histories, default sort by created at (querySteamReportHistories)

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/report/histories

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_id: (orderId) OPTIONAL str in query

        process_status: (processStatus) OPTIONAL Union[str, ProcessStatusEnum] in query

        steam_id: (steamId) OPTIONAL str in query

    Responses:
        200: OK - SteamReportInfoPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySteamReportHistories.create(
        limit=limit,
        offset=offset,
        order_id=order_id,
        process_status=process_status,
        steam_id=steam_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserIAPConsumeHistory)
def query_user_iap_consume_history(
    user_id: str,
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryUserIAPConsumeHistoryStatusEnum]] = None,
    type_: Optional[Union[str, QueryUserIAPConsumeHistoryTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query IAP consume history (queryUserIAPConsumeHistory)

    Query IAP consume history.
    Other detail info:

      * Returns : paginated iap consume history

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/consume/history

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - IAPConsumeHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserIAPConsumeHistory.create(
        user_id=user_id,
        end_time=end_time,
        limit=limit,
        offset=offset,
        start_time=start_time,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserIAPConsumeHistory)
async def query_user_iap_consume_history_async(
    user_id: str,
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryUserIAPConsumeHistoryStatusEnum]] = None,
    type_: Optional[Union[str, QueryUserIAPConsumeHistoryTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query IAP consume history (queryUserIAPConsumeHistory)

    Query IAP consume history.
    Other detail info:

      * Returns : paginated iap consume history

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap/consume/history

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - IAPConsumeHistoryPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserIAPConsumeHistory.create(
        user_id=user_id,
        end_time=end_time,
        limit=limit,
        offset=offset,
        start_time=start_time,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryUserIAPOrders)
def query_user_iap_orders(
    user_id: str,
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    product_id: Optional[str] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryUserIAPOrdersStatusEnum]] = None,
    type_: Optional[Union[str, QueryUserIAPOrdersTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query IAP orders (queryUserIAPOrders)

    Query IAP orders.
    Other detail info:

      * Returns : paginated iap orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        product_id: (productId) OPTIONAL str in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - IAPOrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserIAPOrders.create(
        user_id=user_id,
        end_time=end_time,
        limit=limit,
        offset=offset,
        product_id=product_id,
        start_time=start_time,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryUserIAPOrders)
async def query_user_iap_orders_async(
    user_id: str,
    end_time: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    product_id: Optional[str] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryUserIAPOrdersStatusEnum]] = None,
    type_: Optional[Union[str, QueryUserIAPOrdersTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query IAP orders (queryUserIAPOrders)

    Query IAP orders.
    Other detail info:

      * Returns : paginated iap orders

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        product_id: (productId) OPTIONAL str in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - IAPOrderPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryUserIAPOrders.create(
        user_id=user_id,
        end_time=end_time,
        limit=limit,
        offset=offset,
        product_id=product_id,
        start_time=start_time,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncEpicGamesInventory)
def sync_epic_games_inventory(
    user_id: str,
    body: Optional[EpicGamesReconcileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync epic games inventory. (syncEpicGamesInventory)

    Sync epic games inventory's items.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EpicGamesReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[EpicGamesReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])

        404: Not Found - ErrorEntity (39147: Epic IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncEpicGamesInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncEpicGamesInventory)
async def sync_epic_games_inventory_async(
    user_id: str,
    body: Optional[EpicGamesReconcileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync epic games inventory. (syncEpicGamesInventory)

    Sync epic games inventory's items.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EpicGamesReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[EpicGamesReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])

        404: Not Found - ErrorEntity (39147: Epic IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncEpicGamesInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncOculusConsumableEntitlements)
def sync_oculus_consumable_entitlements(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Oculus entitlements. (syncOculusConsumableEntitlements)

    Sync Oculus entitlements.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[OculusReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39134: Invalid Oculus IAP config under namespace [{namespace}]: [{message}] | 39133: Bad request for Oculus: [{reason}])

        404: Not Found - ErrorEntity (39146: Oculus IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncOculusConsumableEntitlements.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncOculusConsumableEntitlements)
async def sync_oculus_consumable_entitlements_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Oculus entitlements. (syncOculusConsumableEntitlements)

    Sync Oculus entitlements.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[OculusReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39134: Invalid Oculus IAP config under namespace [{namespace}]: [{message}] | 39133: Bad request for Oculus: [{reason}])

        404: Not Found - ErrorEntity (39146: Oculus IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncOculusConsumableEntitlements.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncSteamAbnormalTransaction)
def sync_steam_abnormal_transaction(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Abnormal transaction, Sync steam order by transaction. only works when steam sync mode is TRANSACTION. (syncSteamAbnormalTransaction)

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception with error code [{statusCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamAbnormalTransaction.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncSteamAbnormalTransaction)
async def sync_steam_abnormal_transaction_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Abnormal transaction, Sync steam order by transaction. only works when steam sync mode is TRANSACTION. (syncSteamAbnormalTransaction)

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction

        method: PUT

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39184: Steam api exception with error code [{statusCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamAbnormalTransaction.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncSteamIAPByTransaction)
def sync_steam_iap_by_transaction(
    body: SteamSyncByTransactionRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync steam in app purchase by transaction. (syncSteamIAPByTransaction)

    Sync steam in app purchase by transaction.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamSyncByTransactionRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39183: Steam transaction [{orderId}] is still pending or failed, status [{status}], please try it later | 39184: Steam api exception with error code [{errorCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamIAPByTransaction.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncSteamIAPByTransaction)
async def sync_steam_iap_by_transaction_async(
    body: SteamSyncByTransactionRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync steam in app purchase by transaction. (syncSteamIAPByTransaction)

    Sync steam in app purchase by transaction.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamSyncByTransactionRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - IAPOrderShortInfo (successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user | 39621: Steam api common exception with status code [statusCode] details: [details])

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)

        409: Conflict - ErrorEntity (39183: Steam transaction [{orderId}] is still pending or failed, status [{status}], please try it later | 39184: Steam api exception with error code [{errorCode}] and error message [{message}] | 39185: This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamIAPByTransaction.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncSteamInventory)
def sync_steam_inventory(
    body: SteamSyncRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync steam inventory. (syncSteamInventory)

    Sync steam inventory's items.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39123: IAP request is not in valid application | 39124: IAP request platform [{platformId}] user id is not linked with current user)

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamInventory.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncSteamInventory)
async def sync_steam_inventory_async(
    body: SteamSyncRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync steam inventory. (syncSteamInventory)

    Sync steam inventory's items.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39123: IAP request is not in valid application | 39124: IAP request platform [{platformId}] user id is not linked with current user)

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamInventory.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncTwitchDropsEntitlement)
def sync_twitch_drops_entitlement(
    body: TwitchSyncRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync my game twitch drops entitlements. (syncTwitchDropsEntitlement)

    Sync my game twitch drops entitlements.

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/iap/twitch/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TwitchSyncRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[TwitchSyncResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncTwitchDropsEntitlement.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncTwitchDropsEntitlement)
async def sync_twitch_drops_entitlement_async(
    body: TwitchSyncRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync my game twitch drops entitlements. (syncTwitchDropsEntitlement)

    Sync my game twitch drops entitlements.

    Properties:
        url: /platform/public/namespaces/{namespace}/users/me/iap/twitch/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TwitchSyncRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[TwitchSyncResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncTwitchDropsEntitlement.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncTwitchDropsEntitlement1)
def sync_twitch_drops_entitlement_1(
    body: TwitchSyncRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync twitch drops entitlements. (syncTwitchDropsEntitlement_1)

    Sync twitch drops entitlements.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TwitchSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Sync Successful)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncTwitchDropsEntitlement1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncTwitchDropsEntitlement1)
async def sync_twitch_drops_entitlement_1_async(
    body: TwitchSyncRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync twitch drops entitlements. (syncTwitchDropsEntitlement_1)

    Sync twitch drops entitlements.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TwitchSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Sync Successful)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncTwitchDropsEntitlement1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncXboxInventory)
def sync_xbox_inventory(
    user_id: str,
    body: Optional[XblReconcileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Xbox inventory. (syncXboxInventory)

    Sync Xbox inventory's items.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[XblReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39221: Invalid Xbox Business Partner Certificate or password: [{message}])

        404: Not Found - ErrorEntity (39145: XBox IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncXboxInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncXboxInventory)
async def sync_xbox_inventory_async(
    user_id: str,
    body: Optional[XblReconcileRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Xbox inventory. (syncXboxInventory)

    Sync Xbox inventory's items.Other detail info:

      * Returns :

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblReconcileRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[XblReconcileResult] (successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39221: Invalid Xbox Business Partner Certificate or password: [{message}])

        404: Not Found - ErrorEntity (39145: XBox IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncXboxInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAppleIAPConfig)
def update_apple_iap_config(
    body: AppleIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update apple iap config (updateAppleIAPConfig)

    Update apple iap config. Other detail info:

      * Returns : updated apple iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AppleIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateAppleIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAppleIAPConfig)
async def update_apple_iap_config_async(
    body: AppleIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update apple iap config (updateAppleIAPConfig)

    Update apple iap config. Other detail info:

      * Returns : updated apple iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED AppleIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateAppleIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAppleP8File)
def update_apple_p8_file(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload Apple Store p8 file (updateAppleP8File)

    Upload Apple Store p8 file.
    Other detail info:

      * Returns : updated apple iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple/cert

        method: PUT

        tags: ["IAP"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateAppleP8File.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAppleP8File)
async def update_apple_p8_file_async(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload Apple Store p8 file (updateAppleP8File)

    Upload Apple Store p8 file.
    Other detail info:

      * Returns : updated apple iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/apple/cert

        method: PUT

        tags: ["IAP"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - AppleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateAppleP8File.create(
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateEpicGamesIAPConfig)
def update_epic_games_iap_config(
    body: EpicGamesIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update epic games iap config (updateEpicGamesIAPConfig)

    Update epic games iap config. Other detail info:

      * Returns : updated epic games iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/epicgames

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED EpicGamesIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - EpicGamesIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateEpicGamesIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateEpicGamesIAPConfig)
async def update_epic_games_iap_config_async(
    body: EpicGamesIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update epic games iap config (updateEpicGamesIAPConfig)

    Update epic games iap config. Other detail info:

      * Returns : updated epic games iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/epicgames

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED EpicGamesIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - EpicGamesIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateEpicGamesIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGoogleIAPConfig)
def update_google_iap_config(
    body: GoogleIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update google iap config (updateGoogleIAPConfig)

    Update google iap config. Other detail info:

      * Returns : updated google iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GoogleIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GoogleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGoogleIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGoogleIAPConfig)
async def update_google_iap_config_async(
    body: GoogleIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update google iap config (updateGoogleIAPConfig)

    Update google iap config. Other detail info:

      * Returns : updated google iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GoogleIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GoogleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGoogleIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGoogleP12File)
def update_google_p12_file(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload google play p12 file (updateGoogleP12File)

    Upload google play p12 file.
    Other detail info:

      * Returns : updated google iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google/cert

        method: PUT

        tags: ["IAP"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GoogleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGoogleP12File.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGoogleP12File)
async def update_google_p12_file_async(
    file: Optional[Any] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload google play p12 file (updateGoogleP12File)

    Upload google play p12 file.
    Other detail info:

      * Returns : updated google iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/google/cert

        method: PUT

        tags: ["IAP"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GoogleIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGoogleP12File.create(
        file=file,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateIAPItemConfig)
def update_iap_item_config(
    body: IAPItemConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update iap item config (updateIAPItemConfig)

    Update iap item config. Other detail info:

      * Returns : updated iap item config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/item

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED IAPItemConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - IAPItemConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39321: Invalid IAP item config namespace [{namespace}]: [{message}])

        409: Conflict - ValidationErrorEntity (39175: Duplicate IAP item mapping, IAPType: [{iapType}] and id: [{iapId}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateIAPItemConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateIAPItemConfig)
async def update_iap_item_config_async(
    body: IAPItemConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update iap item config (updateIAPItemConfig)

    Update iap item config. Other detail info:

      * Returns : updated iap item config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/item

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED IAPItemConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - IAPItemConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39321: Invalid IAP item config namespace [{namespace}]: [{message}])

        409: Conflict - ValidationErrorEntity (39175: Duplicate IAP item mapping, IAPType: [{iapType}] and id: [{iapId}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateIAPItemConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateOculusIAPConfig)
def update_oculus_iap_config(
    body: OculusIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update oculus iap config (updateOculusIAPConfig)

    Update oculus iap config. Other detail info:

      * Returns : updated steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/oculus

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OculusIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - OculusIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateOculusIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateOculusIAPConfig)
async def update_oculus_iap_config_async(
    body: OculusIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update oculus iap config (updateOculusIAPConfig)

    Update oculus iap config. Other detail info:

      * Returns : updated steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/oculus

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED OculusIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - OculusIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateOculusIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePlaystationIAPConfig)
def update_playstation_iap_config(
    body: PlaystationIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update playstation iap config (updatePlaystationIAPConfig)

    Update playstation iap config. Other detail info:

      * Returns : updated playstation iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlaystationIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlayStationIAPConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39130: Invalid playstation config: [{message}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlaystationIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePlaystationIAPConfig)
async def update_playstation_iap_config_async(
    body: PlaystationIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update playstation iap config (updatePlaystationIAPConfig)

    Update playstation iap config. Other detail info:

      * Returns : updated playstation iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlaystationIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlayStationIAPConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39130: Invalid playstation config: [{message}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlaystationIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateSteamIAPConfig)
def update_steam_iap_config(
    body: SteamIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update steam iap config (updateSteamIAPConfig)

    Update steam iap config. Other detail info:

      * Returns : updated steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/steam

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SteamIAPConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39128: Steam publisher key is invalid | 39129: Steam app id is invalid)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSteamIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateSteamIAPConfig)
async def update_steam_iap_config_async(
    body: SteamIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update steam iap config (updateSteamIAPConfig)

    Update steam iap config. Other detail info:

      * Returns : updated steam iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/steam

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - SteamIAPConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39128: Steam publisher key is invalid | 39129: Steam app id is invalid)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSteamIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateTwitchIAPConfig)
def update_twitch_iap_config(
    body: TwitchIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update twitch iap config (updateTwitchIAPConfig)

    Update twitch iap config. Other detail info:

      * Returns : updated twitch iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/twitch

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TwitchIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TwitchIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTwitchIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateTwitchIAPConfig)
async def update_twitch_iap_config_async(
    body: TwitchIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update twitch iap config (updateTwitchIAPConfig)

    Update twitch iap config. Other detail info:

      * Returns : updated twitch iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/twitch

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED TwitchIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TwitchIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTwitchIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXblBPCertFile)
def update_xbl_bp_cert_file(
    file: Optional[Any] = None,
    password: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload xbl business partner cert file (updateXblBPCertFile)

    Upload xbl business partner cert file.
    Other detail info:

      * Returns : updated xbl iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl/cert

        method: PUT

        tags: ["IAP"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        password: (password) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - XblIAPConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39221: Invalid Xbox Business Partner Certificate or password: [{message}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateXblBPCertFile.create(
        file=file,
        password=password,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXblBPCertFile)
async def update_xbl_bp_cert_file_async(
    file: Optional[Any] = None,
    password: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload xbl business partner cert file (updateXblBPCertFile)

    Upload xbl business partner cert file.
    Other detail info:

      * Returns : updated xbl iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl/cert

        method: PUT

        tags: ["IAP"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        password: (password) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - XblIAPConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (39221: Invalid Xbox Business Partner Certificate or password: [{message}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateXblBPCertFile.create(
        file=file,
        password=password,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateXblIAPConfig)
def update_xbl_iap_config(
    body: XblIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xbl iap config (updateXblIAPConfig)

    Update xbl iap config. Other detail info:

      * Returns : updated xbl iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XblIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - XblIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateXblIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateXblIAPConfig)
async def update_xbl_iap_config_async(
    body: XblIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update xbl iap config (updateXblIAPConfig)

    Update xbl iap config. Other detail info:

      * Returns : updated xbl iap config

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/xbl

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED XblIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - XblIAPConfigInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateXblIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(V2PublicFulfillAppleIAPItem)
def v2_public_fulfill_apple_iap_item(
    user_id: str,
    body: Optional[AppleIAPRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill apple iap item V2. (V2PublicFulfillAppleIAPItem)

    Verify apple iap transaction and fulfill item, support subscriptionOther detail info:

      * Returns :

    Properties:
        url: /platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL AppleIAPRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Fulfill successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39136: Request Apple API failed with status code [{statusCode}] and error message [{message}] | 39137: Verify Apple transaction failed with status [{status}] and error message [{message}] | 39138: Apple IAP version mismatch detected: The current configuration is set to  [{configVersion}], but the API version is [{apiVersion}]. Please ensure that both the configuration and API versions are aligned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 39142: Apple IAP config not found in namespace [{namespace}])

        409: Conflict - ErrorEntity (39171: The bundle id in namespace [{namespace}] expect [{expected}] but was [{actual}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = V2PublicFulfillAppleIAPItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(V2PublicFulfillAppleIAPItem)
async def v2_public_fulfill_apple_iap_item_async(
    user_id: str,
    body: Optional[AppleIAPRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Fulfill apple iap item V2. (V2PublicFulfillAppleIAPItem)

    Verify apple iap transaction and fulfill item, support subscriptionOther detail info:

      * Returns :

    Properties:
        url: /platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL AppleIAPRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Fulfill successfully)

        400: Bad Request - ErrorEntity (35123: Wallet [{walletId}] is inactive | 38121: Duplicate permanent item exists | 39131: Invalid Apple IAP config under namespace [{namespace}]: [{message}] | 39136: Request Apple API failed with status code [{statusCode}] and error message [{message}] | 39137: Verify Apple transaction failed with status [{status}] and error message [{message}] | 39138: Apple IAP version mismatch detected: The current configuration is set to  [{configVersion}], but the API version is [{apiVersion}]. Please ensure that both the configuration and API versions are aligned)

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 39142: Apple IAP config not found in namespace [{namespace}])

        409: Conflict - ErrorEntity (39171: The bundle id in namespace [{namespace}] expect [{expected}] but was [{actual}] | 20006: optimistic lock)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = V2PublicFulfillAppleIAPItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ValidateExistedPlaystationIAPConfig)
def validate_existed_playstation_iap_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate existed playstation iap config (validateExistedPlaystationIAPConfig)

    Validate playstation iap config. Other detail info:

      * Returns : Test Results

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation/validate

        method: GET

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ValidateExistedPlaystationIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ValidateExistedPlaystationIAPConfig)
async def validate_existed_playstation_iap_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate existed playstation iap config (validateExistedPlaystationIAPConfig)

    Validate playstation iap config. Other detail info:

      * Returns : Test Results

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation/validate

        method: GET

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ValidateExistedPlaystationIAPConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ValidatePlaystationIAPConfig)
def validate_playstation_iap_config(
    body: PlaystationIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate playstation iap config (validatePlaystationIAPConfig)

    Validate playstation iap config. Other detail info:

      * Returns : Test Results

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation/validate

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlaystationIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ValidatePlaystationIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ValidatePlaystationIAPConfig)
async def validate_playstation_iap_config_async(
    body: PlaystationIAPConfigRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate playstation iap config (validatePlaystationIAPConfig)

    Validate playstation iap config. Other detail info:

      * Returns : Test Results

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/config/playstation/validate

        method: PUT

        tags: ["IAP"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlaystationIAPConfigRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - TestResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ValidatePlaystationIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
