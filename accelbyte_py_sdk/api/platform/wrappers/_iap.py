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

from ..models import AppleIAPConfigInfo
from ..models import AppleIAPConfigRequest
from ..models import AppleIAPReceipt
from ..models import EpicGamesIAPConfigInfo
from ..models import EpicGamesIAPConfigRequest
from ..models import EpicGamesReconcileRequest
from ..models import EpicGamesReconcileResult
from ..models import ErrorEntity
from ..models import GoogleIAPConfigInfo
from ..models import GoogleIAPConfigRequest
from ..models import GoogleIAPReceipt
from ..models import IAPOrderPagingSlicedResult
from ..models import MockIAPReceipt
from ..models import PlayStationIAPConfigInfo
from ..models import PlayStationReconcileResult
from ..models import PlaystationIAPConfigRequest
from ..models import StadiaIAPConfigInfo
from ..models import StadiaSyncRequest
from ..models import SteamIAPConfig
from ..models import SteamIAPConfigInfo
from ..models import SteamIAPConfigRequest
from ..models import SteamSyncRequest
from ..models import XblIAPConfigInfo
from ..models import XblIAPConfigRequest
from ..models import XblReconcileRequest
from ..models import XblReconcileResult

from ..operations.iap import DeleteAppleIAPConfig
from ..operations.iap import DeleteEpicGamesIAPConfig
from ..operations.iap import DeleteGoogleIAPConfig
from ..operations.iap import DeletePlaystationIAPConfig
from ..operations.iap import DeleteStadiaIAPConfig
from ..operations.iap import DeleteSteamIAPConfig
from ..operations.iap import DeleteXblAPConfig
from ..operations.iap import GetAppleIAPConfig
from ..operations.iap import GetEpicGamesIAPConfig
from ..operations.iap import GetGoogleIAPConfig
from ..operations.iap import GetPlayStationIAPConfig
from ..operations.iap import GetStadiaIAPConfig
from ..operations.iap import GetSteamIAPConfig
from ..operations.iap import GetXblIAPConfig
from ..operations.iap import MockFulfillIAPItem
from ..operations.iap import PublicFulfillAppleIAPItem
from ..operations.iap import PublicFulfillGoogleIAPItem
from ..operations.iap import PublicReconcilePlayStationStore
from ..operations.iap import QueryUserIAPOrders
from ..operations.iap import SyncEpicGamesInventory
from ..operations.iap import SyncStadiaEntitlement
from ..operations.iap import SyncSteamInventory
from ..operations.iap import SyncXboxInventory
from ..operations.iap import UpdateAppleIAPConfig
from ..operations.iap import UpdateEpicGamesIAPConfig
from ..operations.iap import UpdateGoogleIAPConfig
from ..operations.iap import UpdateGoogleP12File
from ..operations.iap import UpdatePlaystationIAPConfig
from ..operations.iap import UpdateStadiaJsonConfigFile
from ..operations.iap import UpdateSteamIAPConfig
from ..operations.iap import UpdateXblBPCertFile
from ..operations.iap import UpdateXblIAPConfig


@same_doc_as(DeleteAppleIAPConfig)
def delete_apple_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteAppleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteEpicGamesIAPConfig)
def delete_epic_games_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteEpicGamesIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteGoogleIAPConfig)
def delete_google_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteGoogleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeletePlaystationIAPConfig)
def delete_playstation_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeletePlaystationIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteStadiaIAPConfig)
def delete_stadia_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteStadiaIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteSteamIAPConfig)
def delete_steam_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSteamIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteXblAPConfig)
def delete_xbl_ap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteXblAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetAppleIAPConfig)
def get_apple_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetAppleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetEpicGamesIAPConfig)
def get_epic_games_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEpicGamesIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetGoogleIAPConfig)
def get_google_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGoogleIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetPlayStationIAPConfig)
def get_play_station_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPlayStationIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetStadiaIAPConfig)
def get_stadia_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetStadiaIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetSteamIAPConfig)
def get_steam_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetSteamIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(GetXblIAPConfig)
def get_xbl_iap_config(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetXblIAPConfig.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(MockFulfillIAPItem)
def mock_fulfill_iap_item(user_id: str, body: Optional[MockIAPReceipt] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MockFulfillIAPItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicFulfillAppleIAPItem)
def public_fulfill_apple_iap_item(user_id: str, body: Optional[AppleIAPReceipt] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicFulfillAppleIAPItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicFulfillGoogleIAPItem)
def public_fulfill_google_iap_item(user_id: str, body: Optional[GoogleIAPReceipt] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicFulfillGoogleIAPItem.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(PublicReconcilePlayStationStore)
def public_reconcile_play_station_store(user_id: str, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicReconcilePlayStationStore.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(QueryUserIAPOrders)
def query_user_iap_orders(user_id: str, type_: Optional[str] = None, product_id: Optional[str] = None, status: Optional[str] = None, start_time: Optional[str] = None, end_time: Optional[str] = None, offset: Optional[int] = None, limit: Optional[int] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryUserIAPOrders.create(
        user_id=user_id,
        type_=type_,
        product_id=product_id,
        status=status,
        start_time=start_time,
        end_time=end_time,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SyncEpicGamesInventory)
def sync_epic_games_inventory(user_id: str, body: Optional[EpicGamesReconcileRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SyncEpicGamesInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SyncStadiaEntitlement)
def sync_stadia_entitlement(user_id: str, body: Optional[StadiaSyncRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SyncStadiaEntitlement.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SyncSteamInventory)
def sync_steam_inventory(user_id: str, body: Optional[SteamSyncRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SyncSteamInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SyncXboxInventory)
def sync_xbox_inventory(user_id: str, body: Optional[XblReconcileRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SyncXboxInventory.create(
        user_id=user_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateAppleIAPConfig)
def update_apple_iap_config(body: Optional[AppleIAPConfigRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateAppleIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateEpicGamesIAPConfig)
def update_epic_games_iap_config(body: Optional[EpicGamesIAPConfigRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateEpicGamesIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateGoogleIAPConfig)
def update_google_iap_config(body: Optional[GoogleIAPConfigRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGoogleIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateGoogleP12File)
def update_google_p12_file(file: Optional[Any] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateGoogleP12File.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdatePlaystationIAPConfig)
def update_playstation_iap_config(body: Optional[PlaystationIAPConfigRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdatePlaystationIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateStadiaJsonConfigFile)
def update_stadia_json_config_file(file: Optional[Any] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateStadiaJsonConfigFile.create(
        file=file,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateSteamIAPConfig)
def update_steam_iap_config(body: Optional[SteamIAPConfigRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateSteamIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateXblBPCertFile)
def update_xbl_bp_cert_file(file: Optional[Any] = None, password: Optional[str] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateXblBPCertFile.create(
        file=file,
        password=password,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(UpdateXblIAPConfig)
def update_xbl_iap_config(body: Optional[XblIAPConfigRequest] = None, namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = UpdateXblIAPConfig.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)
