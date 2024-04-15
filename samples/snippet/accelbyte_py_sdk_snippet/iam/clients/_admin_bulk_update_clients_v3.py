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

Example: '{"clientIds": ["Dfv9hHQEXgziLYBq", "cTaH8n9kRZD9k98z", "dVExGUPsR4txntpI"], "clientUpdateRequest": {"audiences": ["iPH5wf5ZfsuiDDS8", "EwIM95w0wcaupsLv", "nKhiEb9zdSq7JVcg"], "baseUri": "FAvNQshMyiuKL02L", "clientName": "C5R6wQUCvBuEAFoJ", "clientPermissions": [{"action": 39, "resource": "t85FgwMz5wZMaxDZ", "schedAction": 4, "schedCron": "9cIWaoNlauorFXgx", "schedRange": ["g7QNIgAn5OexpVoT", "qx7PtFl7CmUrh45E", "YlLwmHjETL03gWnK"]}, {"action": 24, "resource": "NWmjl3TBHCqI3bMv", "schedAction": 50, "schedCron": "VZg2C8vvdhSkUIcZ", "schedRange": ["xLkcsjslAmnuiwSv", "Dj5jd5mN1srRMoc3", "rfLMvWKLUKWY2DNz"]}, {"action": 55, "resource": "HFxugE5jlstao1SX", "schedAction": 34, "schedCron": "uMARKRPecHA8E6JV", "schedRange": ["uSi8OfyL1TYS8ETH", "Ae9J6Rxt9EuW6fTc", "T8PJ9Q8Ak3zyKaw0"]}], "clientPlatform": "0faCuB6rARP7EsyP", "deletable": true, "description": "xen0qpCvErSMNEju", "modulePermissions": [{"moduleId": "2spdQw4WI7JF2mQI", "selectedGroups": [{"groupId": "8zEItpQ89W1K9kA7", "selectedActions": [61, 51, 37]}, {"groupId": "L8cIl4ORChh5nJe0", "selectedActions": [63, 23, 10]}, {"groupId": "cvPR4cfgYqgmEvaQ", "selectedActions": [89, 86, 5]}]}, {"moduleId": "HKU3nUSy91uZFBuw", "selectedGroups": [{"groupId": "kUJ0ovz0iHpc9UGY", "selectedActions": [46, 62, 34]}, {"groupId": "33bcLPK4DBqd2bH0", "selectedActions": [55, 23, 80]}, {"groupId": "wFRfQ03J10h8o22U", "selectedActions": [50, 75, 35]}]}, {"moduleId": "uJOIa3Sd2jKWTgAl", "selectedGroups": [{"groupId": "1aPuUIPxhXiG5waO", "selectedActions": [61, 83, 56]}, {"groupId": "kODJXEwSXQKq4GCG", "selectedActions": [53, 7, 19]}, {"groupId": "dB8N827bAJpzeq5a", "selectedActions": [82, 74, 37]}]}], "namespace": "ElN5I5OLoLZWiYaN", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "nZVVRqy42lcuep3Q", "oauthRefreshTokenExpiration": 60, "oauthRefreshTokenExpirationTimeUnit": "Ori3dY1cl1tI2msi", "redirectUri": "jA4pf7HfTZXyKlS1", "scopes": ["5kuy31m18phZGJyt", "6mDV5ACYaaQbzHcX", "EgMt0LisFivZsB0J"], "skipLoginQueue": true, "twoFactorEnabled": true}}'
"""

result, error = admin_bulk_update_clients_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
