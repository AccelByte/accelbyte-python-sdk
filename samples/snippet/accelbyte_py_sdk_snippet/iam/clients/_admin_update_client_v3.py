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

Example: '{"audiences": ["CNHfK5Qpyxj3R8t7", "Y0u1knzucKFRGSBP", "XAdIRLmrrmQi1yfb"], "baseUri": "W4ba7XtFHOGgYg8Z", "clientName": "PRyj8Jt0mIUDxhNg", "clientPermissions": [{"action": 32, "resource": "LzKj4UWbseNBDrkL", "schedAction": 43, "schedCron": "Ey4szTmn9TCRXYjb", "schedRange": ["92DAQOkBCqQzYDrX", "ecaNlhCwr4ksvGwh", "CFAJIFkY0xVvfM6C"]}, {"action": 34, "resource": "aKfmfMa9RYbB9zqw", "schedAction": 88, "schedCron": "wANWeJ5Ezx9dcPhQ", "schedRange": ["d4MxsdVjWG3k8QPF", "UPtrVuivYxOWaXu8", "CZ8plZr8M5Hny5Td"]}, {"action": 54, "resource": "BYZuxRKqheURFEwM", "schedAction": 47, "schedCron": "iPK1P0m9Z2vB8rbT", "schedRange": ["BAIIVTdsVEJR349e", "WttfU9VVND6qPdAF", "lJqrySq5PFig0zEd"]}], "clientPlatform": "98EHSzerHYTYiOmt", "deletable": false, "description": "q20Stea5trlAfNrB", "modulePermissions": [{"moduleId": "CYK12WNC9NwgI22Q", "selectedGroups": [{"groupId": "KvAkul0TlNJJUZnG", "selectedActions": [91, 43, 88]}, {"groupId": "67uQGL61V9lg0S60", "selectedActions": [89, 22, 95]}, {"groupId": "qFrJx18zVEh5iNj9", "selectedActions": [70, 29, 11]}]}, {"moduleId": "IoVWnQxPRzYTFXhz", "selectedGroups": [{"groupId": "2QFaARiUkpNoTOvk", "selectedActions": [6, 6, 7]}, {"groupId": "G5fsTIo9xvmvroMk", "selectedActions": [67, 6, 63]}, {"groupId": "uOv75auSNsGXd6ND", "selectedActions": [60, 81, 61]}]}, {"moduleId": "cytb0h6ZaLR4ZjDa", "selectedGroups": [{"groupId": "2iHiEZpiWiAlViC5", "selectedActions": [47, 60, 1]}, {"groupId": "fmtDPsQ1Rj3dR0jL", "selectedActions": [53, 74, 27]}, {"groupId": "kR1kZ8zP30uQnzu8", "selectedActions": [89, 74, 75]}]}], "namespace": "xaExwYHlKOc0SzDE", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "3760P3RAv0mutjF4", "oauthRefreshTokenExpiration": 10, "oauthRefreshTokenExpirationTimeUnit": "9Snc8U1RXbMZT35J", "redirectUri": "ViTwHZKheiQm3BVa", "scopes": ["brL1lyzNzrgyr6zD", "VGxRAMO3FgBgQb1l", "D25x39RMotw9xxi7"], "skipLoginQueue": false, "twoFactorEnabled": true}'
"""

result, error = admin_update_client_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
