import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_bulk_update_clients_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientsUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientsUpdateRequestV3
client_ids: List[str]
client_update_request: ClientmodelClientUpdateV3Request
Definition: ClientmodelClientUpdateV3Request
    audiences: List[str]
    base_uri: str
    client_name: str
    client_permissions: List[AccountcommonPermissionV3]
    Definition: List[AccountcommonPermissionV3]
        action: int
        resource: str
        sched_action: int
        sched_cron: str
        sched_range: List[str]
    client_platform: str
    deletable: bool
    description: str
    module_permissions: List[AccountcommonClientModulePermission]
    Definition: List[AccountcommonClientModulePermission]
        module_id: str
        selected_groups: List[AccountcommonClientSelectedGroup]
        Definition: List[AccountcommonClientSelectedGroup]
            group_id: str
            selected_actions: List[int]
    namespace: str
    oauth_access_token_expiration: int
    oauth_access_token_expiration_time_unit: str
    oauth_refresh_token_expiration: int
    oauth_refresh_token_expiration_time_unit: str
    redirect_uri: str
    scopes: List[str]
    skip_login_queue: bool
    two_factor_enabled: bool

Example: '{"clientIds": ["NLebabsVW7qYY9Vx", "tU0CrRa32iK94WQ8", "OyqiBNSf9ukQhTlb"], "clientUpdateRequest": {"audiences": ["UIBbcN3t84yuLl0r", "QpUUwNR36upYdWNm", "jEEBQSAenrW414pU"], "baseUri": "2mBK7ubsmmhZ1H2T", "clientName": "o7PSwt5M2vLJSxxP", "clientPermissions": [{"action": 72, "resource": "rljgSMlSH7xyL3ug", "schedAction": 92, "schedCron": "bAEmez9WVMR0prns", "schedRange": ["tcBtr3MPPQ2Wtdld", "ND3cA3bYwuFCXMtT", "slrT3pOB50shSlWK"]}, {"action": 60, "resource": "v7w3f48ihdYgBX28", "schedAction": 28, "schedCron": "h0MmZdlFiZtv7jkl", "schedRange": ["mH551cyo0artfMhO", "Oh1GR9Ag3mFbISZD", "fFC93WuLYn9N0wOn"]}, {"action": 24, "resource": "ejmh9NIIhoSP58HQ", "schedAction": 90, "schedCron": "qGfNph2JDzKul9Wt", "schedRange": ["CQ2IIWEs2a1METOP", "97sM2LsQPrHF4hMp", "NQ48SFmS0BurmVCv"]}], "clientPlatform": "vr41e7eXyDXWFyfn", "deletable": false, "description": "QX6u6yPyUeuhNveF", "modulePermissions": [{"moduleId": "3FOBxKTOaJ4VTxL4", "selectedGroups": [{"groupId": "m2LWtoDciCB4iYBG", "selectedActions": [30, 78, 13]}, {"groupId": "Irm5ZWNP5TMAyQZy", "selectedActions": [8, 4, 13]}, {"groupId": "TSnositmz8osuc6M", "selectedActions": [62, 12, 9]}]}, {"moduleId": "IyArmWzHGmQeFR68", "selectedGroups": [{"groupId": "3dZxs3u3sgxJSzhx", "selectedActions": [88, 61, 9]}, {"groupId": "hmLRMqrK1yNA9wQ4", "selectedActions": [70, 22, 19]}, {"groupId": "441tNBH7JAwU0ZNz", "selectedActions": [45, 92, 18]}]}, {"moduleId": "RGE8mFeKtPmUnpCH", "selectedGroups": [{"groupId": "dvjeMU5W2uTlDs3n", "selectedActions": [57, 94, 47]}, {"groupId": "x2aG60dKUrTSb42m", "selectedActions": [14, 46, 38]}, {"groupId": "n0YDXwA2z38P8zu2", "selectedActions": [17, 18, 9]}]}], "namespace": "qSeYJ4RkOVH6cr89", "oauthAccessTokenExpiration": 68, "oauthAccessTokenExpirationTimeUnit": "OwlWLMvfKlKyifSw", "oauthRefreshTokenExpiration": 71, "oauthRefreshTokenExpirationTimeUnit": "3LfYFPuFCeE70ppb", "redirectUri": "vUw4U8DztB3wbtLD", "scopes": ["8xIx71eR85sy0vbC", "pDCIUlM1Bu2zU8lI", "oj1oWkM7TDyoSoYy"], "skipLoginQueue": true, "twoFactorEnabled": true}}'
"""

result, error = admin_bulk_update_clients_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
