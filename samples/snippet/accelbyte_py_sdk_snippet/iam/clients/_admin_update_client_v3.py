import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_client_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientUpdateV3Request
from accelbyte_py_sdk.api.iam.models import ClientmodelClientV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
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

Example: '{"audiences": ["BtVssAurR33lCd1u", "HidjDrcQafUxYOM6", "pwXAAtGpJ7gWNfEQ"], "baseUri": "5TXoNakJfHlQ1SLR", "clientName": "Cbn7MlAvUBhsfbt6", "clientPermissions": [{"action": 73, "resource": "CM3TFyAIGSE9Jrju", "schedAction": 71, "schedCron": "S8IP3w9IHPop1oCR", "schedRange": ["eT5FVludXL6emdNm", "rHUUBVnODtLpF8VR", "CmINzSaaAoVUkvrc"]}, {"action": 66, "resource": "Zhczinh8pKgxKF55", "schedAction": 1, "schedCron": "zOaCbMhDksRv2xDD", "schedRange": ["IVaOSc9bjjeR6yhp", "PINT48J0mrkHhy9o", "nrxywvsWUzvME8YK"]}, {"action": 84, "resource": "XJqPsNDPfEB1J1bu", "schedAction": 23, "schedCron": "75eDt5SyxEt4qUg7", "schedRange": ["GXJkpq5CEs44Lyn9", "7bHeaEdOHb9np5J4", "1yWsWkBiURR7qVZE"]}], "clientPlatform": "iyaqGEkrzKmW1GIY", "deletable": false, "description": "AaFQXq0Hg5EYKNeE", "modulePermissions": [{"moduleId": "Ez1yP4oUAvNpDSDS", "selectedGroups": [{"groupId": "BhlQqTYsQXs6XFj6", "selectedActions": [40, 87, 70]}, {"groupId": "nLwjc052SC0Wc0xf", "selectedActions": [5, 67, 47]}, {"groupId": "TND95cjdtgiz04CE", "selectedActions": [5, 87, 36]}]}, {"moduleId": "1ua2dUSBcDvspeVc", "selectedGroups": [{"groupId": "QxoEtLm4mdL9V0py", "selectedActions": [63, 70, 64]}, {"groupId": "Tq7LJwgJqvskooGv", "selectedActions": [16, 86, 44]}, {"groupId": "VOMm8RrpoWHQQ07n", "selectedActions": [47, 74, 37]}]}, {"moduleId": "PmpkOeMc4mVQCUel", "selectedGroups": [{"groupId": "7J8VA5ayStoi3xYR", "selectedActions": [77, 46, 30]}, {"groupId": "uSp8i9tpwG0dEiGr", "selectedActions": [87, 42, 67]}, {"groupId": "xShKHExADUmRgwGy", "selectedActions": [12, 22, 95]}]}], "namespace": "V9yu3f2XIvdHdKaP", "oauthAccessTokenExpiration": 83, "oauthAccessTokenExpirationTimeUnit": "tiBdM7Z8pBp6K3o3", "oauthRefreshTokenExpiration": 76, "oauthRefreshTokenExpirationTimeUnit": "QXeMRT6qnXKNPt2r", "redirectUri": "lfwwxEWvpFO1hBJj", "scopes": ["xapCkjTPjQcQ6H2T", "lpVjoQs1Vx6zBg8r", "FgkbA2sphdf9v9sy"], "skipLoginQueue": false, "twoFactorEnabled": true}'
"""

result, error = admin_update_client_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
