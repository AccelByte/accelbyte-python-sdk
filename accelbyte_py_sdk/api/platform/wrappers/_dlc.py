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

from ..models import DLCConfigRewardShortInfo
from ..models import DLCItemConfigInfo
from ..models import DLCItemConfigUpdate
from ..models import EpicGamesDLCSyncRequest
from ..models import ErrorEntity
from ..models import PlatformDLCConfigInfo
from ..models import PlatformDLCConfigUpdate
from ..models import PlayStationDLCSyncMultiServiceLabelsRequest
from ..models import PlayStationDLCSyncRequest
from ..models import SimpleUserDLCRewardContentsResponse
from ..models import SteamDLCSyncRequest
from ..models import UserDLC
from ..models import UserDLCRecord
from ..models import ValidationErrorEntity
from ..models import XblDLCSyncRequest

from ..operations.dlc import DeleteDLCItemConfig
from ..operations.dlc import DeletePlatformDLCConfig
from ..operations.dlc import GeDLCDurableRewardShortMap
from ..operations.dlc import GeDLCDurableRewardShortMapDlcTypeEnum
from ..operations.dlc import GetDLCItemConfig
from ..operations.dlc import GetPlatformDLCConfig
from ..operations.dlc import GetUserDLC
from ..operations.dlc import GetUserDLCStatusEnum, GetUserDLCTypeEnum
from ..operations.dlc import GetUserDLCByPlatform
from ..operations.dlc import GetUserDLCByPlatformTypeEnum
from ..operations.dlc import PublicGetMyDLCContent
from ..operations.dlc import PublicGetMyDLCContentTypeEnum
from ..operations.dlc import PublicSyncPsnDlcInventory
from ..operations.dlc import PublicSyncPsnDlcInventoryWithMultipleServiceLabels
from ..operations.dlc import SyncEpicGameDLC
from ..operations.dlc import SyncOculusDLC
from ..operations.dlc import SyncSteamDLC
from ..operations.dlc import SyncXboxDLC
from ..operations.dlc import UpdateDLCItemConfig
from ..operations.dlc import UpdatePlatformDLCConfig
from ..models import DLCConfigRewardShortInfoDlcTypeEnum
from ..models import UserDLCPlatformEnum
from ..models import (
    UserDLCRecordEntitlementOriginSyncStatusEnum,
    UserDLCRecordPlatformEnum,
    UserDLCRecordStatusEnum,
)


@same_doc_as(DeleteDLCItemConfig)
def delete_dlc_item_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a DLC item config (deleteDLCItemConfig)

    delete a DLC item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/item

        method: DELETE

        tags: ["DLC"]

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
    request = DeleteDLCItemConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteDLCItemConfig)
async def delete_dlc_item_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a DLC item config (deleteDLCItemConfig)

    delete a DLC item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/item

        method: DELETE

        tags: ["DLC"]

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
    request = DeleteDLCItemConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeletePlatformDLCConfig)
def delete_platform_dlc_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a Platform DLC config (deletePlatformDLCConfig)

    delete a Platform DLC config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/platformMap

        method: DELETE

        tags: ["DLC"]

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
    request = DeletePlatformDLCConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeletePlatformDLCConfig)
async def delete_platform_dlc_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete a Platform DLC config (deletePlatformDLCConfig)

    delete a Platform DLC config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/platformMap

        method: DELETE

        tags: ["DLC"]

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
    request = DeletePlatformDLCConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GeDLCDurableRewardShortMap)
def ge_dlc_durable_reward_short_map(
    dlc_type: Union[str, GeDLCDurableRewardShortMapDlcTypeEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get dlc durable reward simple map (geDLCDurableRewardShortMap)

    Get dlc reward simple map, only return the sku of durable item reward.

    Properties:
        url: /platform/public/namespaces/{namespace}/dlc/rewards/durable/map

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        dlc_type: (dlcType) REQUIRED Union[str, DlcTypeEnum] in query

    Responses:
        200: OK - DLCConfigRewardShortInfo (successful operation)

        404: Not Found - ErrorEntity (39442: DLC item config cannot be found in namespace [{namespace}] | 39441: Platform dlc config cannot be found in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GeDLCDurableRewardShortMap.create(
        dlc_type=dlc_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GeDLCDurableRewardShortMap)
async def ge_dlc_durable_reward_short_map_async(
    dlc_type: Union[str, GeDLCDurableRewardShortMapDlcTypeEnum],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get dlc durable reward simple map (geDLCDurableRewardShortMap)

    Get dlc reward simple map, only return the sku of durable item reward.

    Properties:
        url: /platform/public/namespaces/{namespace}/dlc/rewards/durable/map

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        dlc_type: (dlcType) REQUIRED Union[str, DlcTypeEnum] in query

    Responses:
        200: OK - DLCConfigRewardShortInfo (successful operation)

        404: Not Found - ErrorEntity (39442: DLC item config cannot be found in namespace [{namespace}] | 39441: Platform dlc config cannot be found in namespace [{namespace}] | 30341: Item [{itemId}] does not exist in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GeDLCDurableRewardShortMap.create(
        dlc_type=dlc_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetDLCItemConfig)
def get_dlc_item_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get DLC item config (getDLCItemConfig)

    Get DLC item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/item

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DLCItemConfigInfo (successful operation)

        404: Not Found - ErrorEntity (39442: DLC item config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDLCItemConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetDLCItemConfig)
async def get_dlc_item_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get DLC item config (getDLCItemConfig)

    Get DLC item config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/item

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DLCItemConfigInfo (successful operation)

        404: Not Found - ErrorEntity (39442: DLC item config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetDLCItemConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPlatformDLCConfig)
def get_platform_dlc_config(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Platform DLC config (getPlatformDLCConfig)

    Get Platform DLC config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/platformMap

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlatformDLCConfigInfo (successful operation)

        404: Not Found - ErrorEntity (39341: Platform DLC config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlatformDLCConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPlatformDLCConfig)
async def get_platform_dlc_config_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Platform DLC config (getPlatformDLCConfig)

    Get Platform DLC config.

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/platformMap

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: []

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlatformDLCConfigInfo (successful operation)

        404: Not Found - ErrorEntity (39341: Platform DLC config cannot be found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPlatformDLCConfig.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserDLC)
def get_user_dlc(
    user_id: str,
    include_all_namespaces: Optional[bool] = None,
    status: Optional[Union[str, GetUserDLCStatusEnum]] = None,
    type_: Optional[Union[str, GetUserDLCTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user dlc records (getUserDLC)

    Get user dlc records.
    Note: includeAllNamespaces means this endpoint will return user dlcs from all namespace, example scenario isadmin may need to check the user dlcs before unlink a 3rd party account, so the user dlcs should be from all namespaces because unlinking is a platform level action
    Other detail info:

      * Returns : user dlc

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/dlc/records

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        include_all_namespaces: (includeAllNamespaces) OPTIONAL bool in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - List[UserDLCRecord] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserDLC.create(
        user_id=user_id,
        include_all_namespaces=include_all_namespaces,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserDLC)
async def get_user_dlc_async(
    user_id: str,
    include_all_namespaces: Optional[bool] = None,
    status: Optional[Union[str, GetUserDLCStatusEnum]] = None,
    type_: Optional[Union[str, GetUserDLCTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user dlc records (getUserDLC)

    Get user dlc records.
    Note: includeAllNamespaces means this endpoint will return user dlcs from all namespace, example scenario isadmin may need to check the user dlcs before unlink a 3rd party account, so the user dlcs should be from all namespaces because unlinking is a platform level action
    Other detail info:

      * Returns : user dlc

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/dlc/records

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        include_all_namespaces: (includeAllNamespaces) OPTIONAL bool in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - List[UserDLCRecord] (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserDLC.create(
        user_id=user_id,
        include_all_namespaces=include_all_namespaces,
        status=status,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserDLCByPlatform)
def get_user_dlc_by_platform(
    type_: Union[str, GetUserDLCByPlatformTypeEnum],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user dlc by platform (getUserDLCByPlatform)

    Get user dlc by platform.
    Other detail info:

      * Returns : user dlc

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/dlc

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        type_: (type) REQUIRED Union[str, TypeEnum] in query

    Responses:
        200: OK - UserDLC (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserDLCByPlatform.create(
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserDLCByPlatform)
async def get_user_dlc_by_platform_async(
    type_: Union[str, GetUserDLCByPlatformTypeEnum],
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user dlc by platform (getUserDLCByPlatform)

    Get user dlc by platform.
    Other detail info:

      * Returns : user dlc

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/dlc

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        type_: (type) REQUIRED Union[str, TypeEnum] in query

    Responses:
        200: OK - UserDLC (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserDLCByPlatform.create(
        type_=type_,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMyDLCContent)
def public_get_my_dlc_content(
    type_: Union[str, PublicGetMyDLCContentTypeEnum],
    include_all_namespaces: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user dlc reward contents (publicGetMyDLCContent)

    Get user dlc reward contents. If includeAllNamespaces is false, will only return the dlc synced from the current namespace
    Other detail info:

      * Returns : user dlc

    Properties:
        url: /platform/public/users/me/dlc/content

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        include_all_namespaces: (includeAllNamespaces) OPTIONAL bool in query

        type_: (type) REQUIRED Union[str, TypeEnum] in query

    Responses:
        200: OK - SimpleUserDLCRewardContentsResponse (successful operation)
    """
    request = PublicGetMyDLCContent.create(
        type_=type_,
        include_all_namespaces=include_all_namespaces,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMyDLCContent)
async def public_get_my_dlc_content_async(
    type_: Union[str, PublicGetMyDLCContentTypeEnum],
    include_all_namespaces: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user dlc reward contents (publicGetMyDLCContent)

    Get user dlc reward contents. If includeAllNamespaces is false, will only return the dlc synced from the current namespace
    Other detail info:

      * Returns : user dlc

    Properties:
        url: /platform/public/users/me/dlc/content

        method: GET

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        include_all_namespaces: (includeAllNamespaces) OPTIONAL bool in query

        type_: (type) REQUIRED Union[str, TypeEnum] in query

    Responses:
        200: OK - SimpleUserDLCRewardContentsResponse (successful operation)
    """
    request = PublicGetMyDLCContent.create(
        type_=type_,
        include_all_namespaces=include_all_namespaces,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSyncPsnDlcInventory)
def public_sync_psn_dlc_inventory(
    user_id: str,
    body: Optional[PlayStationDLCSyncRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with dlc entitlements in PSN Store. (publicSyncPsnDlcInventory)

    Synchronize with dlc entitlements in PSN Store.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PlayStationDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSyncPsnDlcInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSyncPsnDlcInventory)
async def public_sync_psn_dlc_inventory_async(
    user_id: str,
    body: Optional[PlayStationDLCSyncRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with dlc entitlements in PSN Store. (publicSyncPsnDlcInventory)

    Synchronize with dlc entitlements in PSN Store.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PlayStationDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSyncPsnDlcInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSyncPsnDlcInventoryWithMultipleServiceLabels)
def public_sync_psn_dlc_inventory_with_multiple_service_labels(
    user_id: str,
    body: Optional[PlayStationDLCSyncMultiServiceLabelsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with dlc entitlements in PSN Store with multiple service labels. (publicSyncPsnDlcInventoryWithMultipleServiceLabels)

    Synchronize with dlc entitlements in PSN Store with multiple service labels.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PlayStationDLCSyncMultiServiceLabelsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSyncPsnDlcInventoryWithMultipleServiceLabels.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSyncPsnDlcInventoryWithMultipleServiceLabels)
async def public_sync_psn_dlc_inventory_with_multiple_service_labels_async(
    user_id: str,
    body: Optional[PlayStationDLCSyncMultiServiceLabelsRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Synchronize with dlc entitlements in PSN Store with multiple service labels. (publicSyncPsnDlcInventoryWithMultipleServiceLabels)

    Synchronize with dlc entitlements in PSN Store with multiple service labels.Other detail info:

      * Returns : result of synchronization

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL PlayStationDLCSyncMultiServiceLabelsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39127: Invalid service label [{serviceLabel}] | 39132: Bad request for playstation under namespace [{namespace}], reason: [{reason}].)

        404: Not Found - ErrorEntity (39143: PlayStation IAP config not found in namespace [{namespace}])
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSyncPsnDlcInventoryWithMultipleServiceLabels.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncEpicGameDLC)
def sync_epic_game_dlc(
    user_id: str,
    body: Optional[EpicGamesDLCSyncRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync epic games dlc items (syncEpicGameDLC)

    Sync epic games dlc items

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/epicgames/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EpicGamesDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])

        404: Not Found - ErrorEntity (39147: Epic IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncEpicGameDLC.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncEpicGameDLC)
async def sync_epic_game_dlc_async(
    user_id: str,
    body: Optional[EpicGamesDLCSyncRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync epic games dlc items (syncEpicGameDLC)

    Sync epic games dlc items

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/epicgames/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL EpicGamesDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}])

        404: Not Found - ErrorEntity (39147: Epic IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncEpicGameDLC.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncOculusDLC)
def sync_oculus_dlc(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync oculus dlc. (syncOculusDLC)

    Sync oculus dlc

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync

        method: PUT

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39134: Invalid Oculus IAP config under namespace [{namespace}]: [{message}] | 39133: Bad request for Oculus: [{reason}])

        404: Not Found - ErrorEntity (39146: Oculus IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncOculusDLC.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncOculusDLC)
async def sync_oculus_dlc_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync oculus dlc. (syncOculusDLC)

    Sync oculus dlc

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync

        method: PUT

        tags: ["DLC"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39134: Invalid Oculus IAP config under namespace [{namespace}]: [{message}] | 39133: Bad request for Oculus: [{reason}])

        404: Not Found - ErrorEntity (39146: Oculus IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncOculusDLC.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncSteamDLC)
def sync_steam_dlc(
    body: SteamDLCSyncRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync steam dlc. (syncSteamDLC)

    Sync steam dlc

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user)

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamDLC.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncSteamDLC)
async def sync_steam_dlc_async(
    body: SteamDLCSyncRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync steam dlc. (syncSteamDLC)

    Sync steam dlc

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED SteamDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39124: IAP request platform [{platformId}] user id is not linked with current user)

        404: Not Found - ErrorEntity (39144: Steam IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncSteamDLC.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncXboxDLC)
def sync_xbox_dlc(
    user_id: str,
    body: Optional[XblDLCSyncRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Xbox dlc items. (syncXboxDLC)

    Sync Xbox inventory's dlc items

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39221: Invalid Xbox Business Partner Certificate or password: [{message}])

        404: Not Found - ErrorEntity (39145: XBox IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncXboxDLC.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncXboxDLC)
async def sync_xbox_dlc_async(
    user_id: str,
    body: Optional[XblDLCSyncRequest] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Sync Xbox dlc items. (syncXboxDLC)

    Sync Xbox inventory's dlc items

    Properties:
        url: /platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblDLCSyncRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Successful operation)

        400: Bad Request - ErrorEntity (39125: Invalid platform [{platformId}] user token | 39126: User id [{}] in namespace [{}] doesn't link platform [{}] | 39221: Invalid Xbox Business Partner Certificate or password: [{message}])

        404: Not Found - ErrorEntity (39145: XBox IAP config not found in namespace [{namespace}].)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncXboxDLC.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateDLCItemConfig)
def update_dlc_item_config(
    body: DLCItemConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update DLC item config (updateDLCItemConfig)

    Update DLC item config. Other detail info:

      * Returns : updated DLC item config

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/item

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DLCItemConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DLCItemConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (394721: Invalid platform DLC config namespace [{namespace}]: [{message}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{itemSku}] does not exist )

        409: Conflict - ErrorEntity (39471: Duplicated dlc reward id [{dlcRewardId}] in namespace [{namespace}] )

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateDLCItemConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateDLCItemConfig)
async def update_dlc_item_config_async(
    body: DLCItemConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update DLC item config (updateDLCItemConfig)

    Update DLC item config. Other detail info:

      * Returns : updated DLC item config

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/item

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED DLCItemConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - DLCItemConfigInfo (successful operation)

        400: Bad Request - ErrorEntity (394721: Invalid platform DLC config namespace [{namespace}]: [{message}])

        404: Not Found - ErrorEntity (30341: Item [{itemId}] does not exist in namespace [{namespace}] | 30343: Item of sku [{itemSku}] does not exist )

        409: Conflict - ErrorEntity (39471: Duplicated dlc reward id [{dlcRewardId}] in namespace [{namespace}] )

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateDLCItemConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdatePlatformDLCConfig)
def update_platform_dlc_config(
    body: PlatformDLCConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Platform DLC config (updatePlatformDLCConfig)

    Update Platform DLC config. Other detail info:

      * Returns : updated Platform DLC config



    ## Restrictions for platform dlc map


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/platformMap

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlatformDLCConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlatformDLCConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlatformDLCConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdatePlatformDLCConfig)
async def update_platform_dlc_config_async(
    body: PlatformDLCConfigUpdate,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Platform DLC config (updatePlatformDLCConfig)

    Update Platform DLC config. Other detail info:

      * Returns : updated Platform DLC config



    ## Restrictions for platform dlc map


    1. Cannot use "." as the key name
    -


        { "data.2": "value" }


    2. Cannot use "$" as the prefix in key names
    -


        { "$data": "value" }

    Properties:
        url: /platform/admin/namespaces/{namespace}/dlc/config/platformMap

        method: PUT

        tags: ["DLC"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED PlatformDLCConfigUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - PlatformDLCConfigInfo (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdatePlatformDLCConfig.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
